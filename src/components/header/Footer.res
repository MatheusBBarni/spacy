open AncestorSpacy

@react.component
let make = () => {
  <Stack
    py=[xs(3.0)]
    tag=#footer
    width=[xs(100.0->#pct)]
    justifyContent=[xs(#"space-between")]
    direction=[xs(#horizontal)]
    borderTop=[(1->#px, #solid, #primary200)->xs]>
    <Typography
      tag=#p color=[xs(#primary200)] fontSize=[xs(18->#px)] fontWeight=[xs(#500)] m=[xs(0.0)]>
      {"Made with "->React.string}
      <Typography
        tag=#a
        href="https://rescript-lang.org"
        target="_blank"
        color=[xs(#primary700)]
        fontWeight=[xs(#700)]>
        {"Rescript"->React.string}
      </Typography>
      {" and "->React.string}
      <Typography
        m=[xs(0.0)]
        tag=#a
        href="https://nextjs.org"
        target="_blank"
        color=[xs(#primary700)]
        fontWeight=[xs(#700)]>
        {"Next.js"->React.string}
      </Typography>
    </Typography>
    <Typography tag=#p color=[xs(#primary200)] fontSize=[xs(18->#px)] fontWeight=[xs(#500)]>
      {"Copyright Spacy - All rights reserved"->React.string}
    </Typography>
  </Stack>
}
