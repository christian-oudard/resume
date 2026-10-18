#let ink = rgb("#333333")
#let body-size = 10.5pt
#let indent = 1.2 * body-size
#let mono = (font: "Noto Sans Mono", weight: "light", size: 0.85 * body-size)

#let resume(name: none, email: none, github: none, body) = {
  set document(title: name, author: name)
  set page(paper: "us-letter", margin: (top: 0.5in, x: 0.67in + indent, bottom: 0.67in))
  set text(font: "EB Garamond", size: body-size, fill: ink)
  set par(leading: 0.65em, spacing: 1.1em)
  set list(spacing: 4pt, marker: ([•], [–]))

  show raw: set text(..mono)
  show link: set text(..mono, fill: rgb("#335588"))
  show heading: set text(weight: 600)
  show heading: it => pad(x: -indent, it)
  show heading.where(level: 1): it => align(center, block(below: 20pt, text(28pt, it.body)))
  show heading.where(level: 2): set text(18pt)
  show heading.where(level: 2): set block(above: 1.6em, below: 0.8em)
  show heading.where(level: 3): set text(14pt)
  show heading.where(level: 3): set block(above: 0pt, below: 9pt)

  heading(level: 1, name)
  pad(x: -indent)[
    #align(center)[
      #link("mailto:" + email, text(fill: ink, email)) #h(0.6em)·#h(0.6em) #link("https://github.com/" + github)[github.com/#github]
    ]
    #block(below: 1.2em, line(length: 100%, stroke: 0.5pt + ink))
  ]
  body
}

#let intro(body) = {
  set par(justify: true)
  body
}

#let skills(left, right) = grid(columns: (1fr, 1fr), left, right)

#let entry(title: none, dates: none, tech: none, body) = block(
  breakable: false,
  above: 1.6em,
  {
    heading(level: 3)[#title #h(1fr) #text(body-size, weight: "regular", style: "italic", dates)]
    if tech != none { par[*Technologies*: #tech] }
    body
  },
)
