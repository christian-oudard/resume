#!/bin/sh
set -e
cd "$(dirname "$0")"

garamond=https://raw.githubusercontent.com/octaviopardo/EBGaramond12/106a4a6d377987459ae5e68673a4570f13b957fb/fonts/ttf
noto=https://raw.githubusercontent.com/notofonts/notofonts.github.io/5c3913063bb189df4edc94b766584dfb4c04a187/fonts/NotoSansMono/unhinted/ttf
mkdir -p fonts
for url in \
  $garamond/EBGaramond-Regular.ttf \
  $garamond/EBGaramond-Italic.ttf \
  $garamond/EBGaramond-SemiBold.ttf \
  $noto/NotoSansMono-Light.ttf
do
  file=fonts/${url##*/}
  [ -f "$file" ] || curl -fsSL -o "$file" "$url"
done

typst compile --font-path fonts --ignore-system-fonts resume.typ christian_oudard_resume.pdf
