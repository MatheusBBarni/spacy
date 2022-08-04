type props = {
  name: Storybook.argTypes<string>,
  size: Storybook.argTypes<float>,
}

let default = Storybook.make(
  ~title="Components/Avatar",
  ~component=Avatar.make,
  ~argTypes={
    name: Storybook.argType(~control=Text, ~defaultValue="Matheus", ()),
    size: Storybook.argType(~control=Range({min: 1., max: 10., step: None}), ~defaultValue=1., ()),
  },
  (),
)
