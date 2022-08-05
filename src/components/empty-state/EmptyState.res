open AncestorSpacy

@react.component
let make = (~title, ~description) => {
  <Stack>
    <Next.Image src="/images/empty-state.svg" width=132.0 height=124.0 layout=#fixed />
    {title->React.string}
    {description->React.string}
  </Stack>
}
