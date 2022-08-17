open AncestorSpacy

module Styles = {
  open Theme
  open Emotion

  let input = (~error) =>
    css({
      "height": 42,
      "padding": `0 ${spacing(2.0)}`,
      "fontFamily": Constants.fontFamily,
      "fontWeight": 500,
      "fontSize": `1.8rem`,
      "letterSpacing": "-0.02em",
      "backgroundColor": Polished.transparentize(0.92, Colors.make(#primary600)),
      "border": 0,
      "outline": 0,
      "borderRadius": 0.5->radius,
      "color": switch error {
      | None => Colors.make(#primary600)
      | Some(_) => Colors.make(#red)
      },
      "&:disabled": {
        "cursor": "not-allowed",
        "opacity": "0.7",
      },
      "::placeholder": {
        "color": Colors.make(#primary300),
      },
    })

  let error = css({
    "color": Colors.make(#red),
    "fontSize": `1.2rem`,
    "fontFamily": Constants.fontFamily,
    "fontWeight": 500,
    "letterSpacing": "-0.02em",
  })
}

@react.component
let make = (~placeholder=?, ~onChange=?, ~type_=?, ~disabled=false, ~error: option<string>=?) => {
  <Stack gap=[xs(1.0->#one)]>
    <Base className={Styles.input(~error)} tag=#input ?placeholder ?onChange ?type_ disabled />
    {switch error {
    | None => React.null
    | Some(message) => <Base className=Styles.error tag=#span> {message->React.string} </Base>
    }}
  </Stack>
}
