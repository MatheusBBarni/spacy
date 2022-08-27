module Styles = {
  open Emotion

  let overlay = css({
    "border": "solid 1px red",
  })

  let content = css({
    "border": "solid 1px green",
  })
}

@react.component
let make = (~trigger, ~children) => {
  open Radix
  <Dialog.Root>
    <Dialog.Trigger asChild=true> trigger </Dialog.Trigger>
    <Dialog.Overlay className=Styles.overlay />
    <Dialog.Content className=Styles.content> children </Dialog.Content>
  </Dialog.Root>
}
