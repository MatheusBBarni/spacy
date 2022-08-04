type props = {
  type_: Storybook.argTypes<string>,
  placeholder: Storybook.argTypes<string>,
  disabled: Storybook.argTypes<bool>,
  error: Storybook.argTypes<string>,
}

let default = Storybook.make(
  ~title="Components/Input",
  ~component=Input.make,
  ~argTypes={
    type_: Storybook.argType(
      ~control=Radio, 
      ~options=["text", "password"], 
      ~defaultValue="text", 
      ()
    ),
    placeholder: Storybook.argType(
      ~control=Text, 
      ()
    ),
    error: Storybook.argType(
      ~control=Text, 
      ()
    ),
    disabled: Storybook.argType(
      ~control=Boolean, 
      ()
    ),
  },
  ()
)