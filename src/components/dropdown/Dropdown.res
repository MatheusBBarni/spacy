open AncestorSpacy

module Popover = Radix.Popover

module Styles = {
  open Emotion

  let slideUpAndFade = keyframes({
    "from": {
      "opacity": 0,
      "transform": "translateY(2px)",
    },
    "to": {
      "opacity": 1,
      "transform": "translateY(9)",
    },
  })

  let trigger = css({
    "border": "none",
    "outline": "none",
    "background": "none",
    "cursor": "pointer",
    "borderRadius": Theme.Radius.make(1.),
    "padding": `${Theme.Spacing.make(1.0)} ${Theme.Spacing.make(1.25)}`,
    "transition": "250ms background, 150ms box-shadow",
    "willChange": "background",
    "&:hover": {
      "transition": "250ms background",
      "background": Theme.colors(#primary200)->Polished.transparentize(0.75, _),
    },
    "&:focus": {
      "transition": "150ms box-shadow",
      "boxShadow": `0px 0px 0px 2px ${Theme.colors(#primary200)}`,
    },
  })

  let content = css({
    "border": `solid 1px ${Theme.colors(#primary200)->Polished.transparentize(0.5, _)}`,
    "borderRadius": Theme.Spacing.make(1.0),
    "padding": Theme.Spacing.make(2.0),
    "display": "flex",
    "flexDirection": "column",
    "minWidth": 125,
    "animationDuration": "350ms",
    "willChange": "transform, opacity",
    "&[data-state='open']": {
      "&[data-side='bottom']": {
        "animationName": slideUpAndFade,
      },
    },
  })

  let item = css({
    "padding": Theme.Spacing.make(1.0),
    "textAlign": "center",
    "display": "flex",
    "justifyContent": "center",
    "alignItems": "center",
    "fontSize": 16,
    "fontWeight": 700,
    "letterSpacing": "-0.02em",
    "cursor": "pointer",
    "borderRadius": Theme.Radius.make(0.5),
    "transition": "250ms background, 150ms box-shadow",
    "willChange": "background",
    "&:hover": {
      "transition": "250ms background",
      "background": Theme.colors(#primary200)->Polished.transparentize(0.8, _),
    },
    "&:focus": {
      "transition": "150ms box-shadow",
      "boxShadow": `0px 0px 0px 2px ${Theme.colors(#primary200)}`,
    },
  })
}

module Item = {
  @react.component
  let make = (~label) => {
    <Base className=Styles.item tag=#a> {label->React.string} </Base>
  }
}

@react.component
let make = (~trigger, ~children) => {
  <Popover.Root>
    <Popover.Trigger asChild=true>
      <button className=Styles.trigger> trigger </button>
    </Popover.Trigger>
    <Popover.Portal>
      <Popover.Content className=Styles.content sideOffset=6> children </Popover.Content>
    </Popover.Portal>
  </Popover.Root>
}
