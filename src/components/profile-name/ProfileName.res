open AncestorSpacy

type size = [#lg | #md]

@react.component
let make = (~size: size=#lg, ~name) => {
  let avatarSize = switch size {
  | #lg => 1.0
  | #md => 0.8
  }

  let fontSize = switch size {
  | #lg => 1.6->#rem
  | #md => 1.4->#rem
  }

  <Stack alignItems=[xs(#center)] gap=[xs(#one(1.))]>
    <Avatar size=avatarSize name />
    <Typography
      color=[xs(Theme.Colors.primary700)]
      letterSpacing=[xs(-0.05->#em)]
      fontWeight=[xs(#700)]
      fontSize=[xs(fontSize)]>
      {name->React.string}
    </Typography>
  </Stack>
}
