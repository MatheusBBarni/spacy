open AncestorSpacy

@react.component
let make = (~children) => {
  <Stack gap=[xs(#one(2.0))] mt=[xs(14.0)] alignItems=[xs(#center)]> children </Stack>
}

module Title = {
  @react.component
  let make = () => {
    <Typography
      tag=#h1
      color=[xs(#primary700)]
      letterSpacing=[xs(-0.055->#em)]
      textAlign=[xs(#center)]
      fontSize=[xs(4.2->#rem)]
      m=[xs(0.0)]
      fontWeight=[xs(#700)]>
      {"Stay curious."->React.string}
    </Typography>
  }
}
module Text = {
  @react.component
  let make = () => {
    <Typography
      tag=#p
      color=[xs(#primary300)]
      fontSize=[xs(2.4->#rem)]
      fontWeight=[xs(#400)]
      letterSpacing=[xs(-0.035->#em)]
      textAlign=[xs(#center)]
      lineHeight=[xs(3.4->#rem)]
      m=[xs(0.0)]>
      {"Discover stories, thinking, and expertise from writers on any topic."->React.string}
    </Typography>
  }
}
