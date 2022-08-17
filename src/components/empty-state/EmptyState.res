open AncestorSpacy

@react.component
let make = (~title, ~description) => {
  <Stack
    direction=[xs(#horizontal)]
    justifyContent=[xs(#center)]
    alignItems=[xs(#center)]
    gap=[xs(#one(4.))]>
    <Next.Image src="/images/empty-state.svg" width=132.0 height=124.0 layout=#fixed />
    <Stack direction=[xs(#horizontal)] gap=[xs(#one(1.))] textAlign=[xs(#center)]>
      <Typography
        m=[xs(0.)]
        tag=#h1
        fontSize=[xs(2.4->#rem)]
        fontWeight=[xs(#700)]
        letterSpacing=[xs(-0.03->#em)]
        lineHeight=[xs(3.2->#rem)]
        color=[xs(#primary700)]>
        {title->React.string}
      </Typography>
      <Typography
        m=[xs(0.)]
        tag=#p
        fontSize=[xs(1.8->#rem)]
        fontWeight=[xs(#500)]
        letterSpacing=[xs(-0.03->#em)]
        lineHeight=[xs(2.4->#rem)]
        color=[xs(#primary200)]>
        {description->React.string}
      </Typography>
    </Stack>
  </Stack>
}
