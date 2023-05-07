open AncestorSpacy

module Styles = {
  open Emotion

  let header = css({
    "button[aria-haspopup=dialog]": {
      "outline": "none",
      "border": "none",
      "background": "none",
    },
  })
}

@react.component
let make = () => {
  <Stack
    width=[xs(100.0->#pct)]
    justifyContent=[xs(#"space-between")]
    tag=#header
    direction=[xs(#horizontal)]
    className=Styles.header>
    <Logo />
    <Modal.Root>
      <Modal.Trigger>
        <Button size=#lg label="Sign in" />
      </Modal.Trigger>
      <Modal.Overlay />
      <SignInModal />
    </Modal.Root>
  </Stack>
}
