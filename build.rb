#!/usr/bin/env ruby

require 'net/http'
require 'uri'
require 'zip'
require 'asciidoctor'
require 'asciidoctor-pdf'

INFILE = 'resume.adoc'
OUTFILE = 'christian_oudard_resume.pdf'
THEME_FILE = 'theme.yml'
FONT_FOLDER = 'fonts/'
BASE_URL = 'https://gwfh.mranftl.com/api/fonts/'
FONTS = [
  'eb-garamond?download=zip&subsets=latin&variants=600,regular,italic&formats=ttf',
]

# Download fonts.
Dir.mkdir(FONT_FOLDER) unless Dir.exists?(FONT_FOLDER)
FONTS.each do |font|
  zip_file = FONT_FOLDER + font.split('?').first + '.zip'
  unless File.exists?(zip_file)
    url = URI.join(BASE_URL, font)
    puts "Downloading #{zip_file}"
    response = Net::HTTP.get_response(url)
    File.open(zip_file, 'wb') do |file|
      file.write(response.body)
    end
  end
end

Dir.chdir(FONT_FOLDER)
Dir.glob('*.zip').each do |zip_file|
  Zip::File.open(zip_file) do |zip_file|
    zip_file.each do |entry|
      unless File.exists?(entry.name)
        puts "Writing #{entry.name}"
        File.open(entry.name, 'wb') do |file|
          file.write(zip_file.read(entry.name))
        end
      end
    end
  end
end
Dir.chdir('..')


# Render AsciiDoc to PDF.

Asciidoctor.convert_file(
  INFILE,
  {
    to_file: OUTFILE,
    backend: 'pdf',
    attributes: {
      'pdf-fontsdir' => FONT_FOLDER,
      'pdf-theme' => THEME_FILE,
    }
  }
)
puts "Wrote #{OUTFILE}"

