// Date must be set to none for deterministic builds
#set document(date: none)
#set page("a4", flipped: true)
// #set text(font: "Route 159")

#let sectionTitle(content, size: 36pt) = {
  upper(text(size: size, weight: "bold", content))
}

#let sectionPage(content, text_size: 36pt) = {
  page(
    margin: (x: 1cm, y: 0pt), background: align(right, image("./nixos-lambda-R512-T1_4-G0-none.svg", height: 100%)), layout(size => {
      let text_content = sectionTitle(size: text_size)[#content]
      let text_size = measure(text_content)
      let text_start = 5 / 9 * size.height - text_size.height / 2
      place(top + left, dy: text_start)[#text_content]
    }),
  )
}

#let contentPage(header, leftSide, rightSide) = {
  page(
    margin: (x: 1cm, y: 1cm), header: [
      #h(1fr) #header
    ], grid(
      columns: (2fr, 1fr), rows: 1fr, gutter: 1em, align(horizon, leftSide), align(horizon, rightSide),
    ),
  )
}

#sectionPage[NixOS Branding Guide]
#lorem(300)

#sectionPage[Brand Identity]
#lorem(300)

#sectionPage[Logo]

#contentPage[
  Anatomy - Lambda - Linear
][
  #image("./nixos-lambda-dimensioned-linear.svg")
][
All meaningful dimensions of the lambda emerge as simply rational numbers given
the default values of `thickness` and `gap` and setting the `radius` to 2 such
that the hexagon maximal diameter is 1. In all cases, the denominator is a power
of 2.
]

