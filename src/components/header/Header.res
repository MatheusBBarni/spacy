open AncestorSpacy

@react.component
let make = () => {
  <Stack
    width=[xs(100.0->#pct)]
    justifyContent=[xs(#"space-between")]
    tag=#header
    direction=[xs(#horizontal)]>
    <Logo /> <Button label="Sign in" />
  </Stack>
}
