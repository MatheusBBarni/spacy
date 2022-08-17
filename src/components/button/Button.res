open AncestorSpacy

type size = [#md | #lg]

module Styles = {
  open Theme

  let transition = `200ms background-color, 150ms box-shadow`

  let button = (~size, ~block) =>
    Emotion.css({
      "display": "flex",
      "alignItems": "center",
      "justifyContent": "center",
      "minWidth": 124,
      "width": block ? "100%" : "auto",
      "height": switch size {
      | #md => "32px"
      | #lg => "42px"
      },
      "fontSize": switch size {
      | #md => "1.6rem"
      | #lg => "1.8rem"
      },
      "fontWeight": 700,
      "lineHeight": switch size {
      | #md => "2.1rem"
      | #lg => "2.3rem"
      },
      "padding": `0 ${spacing(1.5)}`,
      "letterSpacing": "-0.0055em",
      "border": 0,
      "borderRadius": radius(0.25),
      "backgroundColor": colors(#primary700),
      "color": colors(#primary100),
      "fontFamily": Constants.fontFamily,
      "cursor": "pointer",
      "willChange": "background-color",
      "transition": transition,
      "outline": 0,
      "&:hover": {
        "transition": transition,
        "backgroundColor": colors(#primary500),
      },
      "&:focus": {
        "transition": transition,
        "boxShadow": `0px 0px 0px 2px #858585`,
      },
      "&:disabled": {
        "opacity": "0.3",
        "cursor": "not-allowed",
      },
    })
}

@react.component
let make = (~label, ~size: size=#md, ~disabled=false, ~block=false, ~onClick=?, ~loading=false) => {
  let spinnerSize = switch size {
  | #lg => 2.0->#rem
  | #md => 1.6->#rem
  }

  <Base className={Styles.button(~size, ~block)} tag=#button disabled ?onClick>
    {switch loading {
    | true => <Spinner size=spinnerSize color=#primary100 background=#primary100 />
    | false => label->React.string
    }}
  </Base>
}
