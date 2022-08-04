open AncestorSpacy

type size = [#sm | #md]

module Styles = {
  open Theme

  let button = (~size) => Emotion.css({
    "height": switch size {
      | #sm => "42px"
      | #md => "52px"
    },
    "fontSize": switch size {
      | #sm => "14px"
      | #md => "16px"
    },
    "border": 0,
    "backgroundColor": Colors.primary700->Colors.toString,
    "color": Colors.primary100->Colors.toString,
    "fontFamily": Constants.fontFamily
  })
}

@react.component
let make = (~label, ~size: size=#sm) => {
  <Base className=Styles.button(~size) tag=#button>{label->React.string}</Base>
}