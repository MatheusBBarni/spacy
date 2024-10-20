open AncestorSpacy
open Render

module FormFields = %lenses(
  type state = {
    title: string,
    short: string,
    content: string,
  }
)

module Form = ReForm.Make(FormFields)

let formSchema = {
  open Form.Validation

  schema([
    nonEmpty(~error="Title is required", Title),
    nonEmpty(~error="Short is required", Short),
    nonEmpty(~error="Content is required", Content),
  ])
}

let default = () => {
  let handleSubmit = (event: Form.onSubmitAPI) => {
    Js.log(event)
    None
  }

  let form = Form.use(
    ~initialState={title: "", short: "", content: ""},
    ~onSubmit=handleSubmit,
    ~validationStrategy=OnDemand,
    ~schema=formSchema,
    (),
  )

  let handleChange = fieldName => {
    ReForm.Helpers.handleChange(form.handleChange(fieldName))
  }

  let handleSubmitClick = e => {
    e->ReactEvent.Mouse.preventDefault
    form.submit()
  }

  <Stack py=[xs(12.)] width=[xs(#pct(70.))]>
    <Stack py=[xs(3.)]>
      <Typography
        fontSize=[xs(2.6->#rem)]
        color=[xs(#primary700)]
        fontWeight=[xs(#700)]
        letterSpacing=[xs(-0.02->#em)]>
        {"New article"->s}
      </Typography>
    </Stack>
    <Stack gap=[xs(#one(3.0))]>
      <Input
        placeholder="Title"
        autoFocus=true
        onChange={handleChange(Title)}
        value=form.values.title
        error=?{form.getFieldError(Field(Title))}
      />
      <Input
        placeholder="What's this article about?"
        autoFocus=true
        onChange={handleChange(Short)}
        value=form.values.short
        error=?{form.getFieldError(Field(Short))}
      />
      <Textarea
        placeholder="Write your article (in markdown)"
        autoFocus=true
        onChange={handleChange(Content)}
        value=form.values.content
        error=?{form.getFieldError(Field(Content))}
      />
      <Box display=[xs(#flex)] justifyContent=[xs(#"flex-end")]>
        <Button size=#lg label="Submit" onClick=handleSubmitClick />
      </Box>
    </Stack>
  </Stack>
}
