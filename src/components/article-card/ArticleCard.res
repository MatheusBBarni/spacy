open AncestorSpacy

module Styles = {
  open Emotion
  open Theme

  let card = css({
    "backgroundColor": colors(#primary200)->Polished.transparentize(0.7, _),
    "padding": spacing(4.0),
    "borderRadius": 2,
    "transition": "250ms background-color",
    "&:hover": {
      "backgroundColor": colors(#primary200)->Polished.transparentize(0.5, _),
    },
  })
}

module Metadata = {
  @react.component
  let make = (~children) => {
    <Typography fontSize=[xs(14->#px)] fontWeight=[xs(#700)] color=[xs(#primary700)]>
      {children->React.string}
    </Typography>
  }
}

@react.component
let make = (~title, ~description, ~authorName, ~publishedDate, ~readingTime) => {
  <Stack className=Styles.card gap=[xs(#one(3.0))]>
    <Stack gap=[xs(#one(1.0))]>
      <Typography
        tag=#p
        m=[xs(0.0)]
        fontSize=[xs(22->#px)]
        fontWeight=[xs(#700)]
        letterSpacing=[xs(-0.04->#em)]
        color=[xs(#primary700)]>
        {title->React.string}
      </Typography>
      <Typography
        tag=#p m=[xs(0.0)] fontSize=[xs(16->#px)] fontWeight=[xs(#400)] color=[xs(#primary300)]>
        {description->React.string}
      </Typography>
    </Stack>
    <Stack
      direction=[xs(#horizontal)] justifyContent=[xs(#"space-between")] alignItems=[xs(#center)]>
      <ProfileName name=authorName size=#md />
      <Stack direction=[xs(#horizontal)] gap=[xs(#one(1.0))]>
        <Metadata> {`${readingTime->Belt.Int.toString}min`} </Metadata>
        <Typography tag=#span fontSize=[xs(14->#px)] fontWeight=[xs(#700)] color=[xs(#primary200)]>
          {"//"->React.string}
        </Typography>
        <Metadata> {publishedDate} </Metadata>
      </Stack>
    </Stack>
  </Stack>
}
