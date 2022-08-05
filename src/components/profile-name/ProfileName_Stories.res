type props = {
  size: Storybook.argTypes<ProfileName.size>,
  name: Storybook.argTypes<string>,
}

let default = Storybook.make(
  ~title="Components/ProfileName",
  ~component=ProfileName.make,
  ~argTypes={
    size: Storybook.argType(~options=[#lg, #md], ~defaultValue=#lg, ~control=Radio, ()),
    name: Storybook.argType(~defaultValue="Matheus", ~control=Text, ()),
  },
  (),
)
