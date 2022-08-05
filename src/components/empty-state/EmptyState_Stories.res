type props = {
  title: Storybook.argTypes<string>,
  description: Storybook.argTypes<string>,
}

let default = Storybook.make(
  ~title="Components/EmptyState",
  ~component=EmptyState.make,
  ~argTypes={
    title: Storybook.argType(~control=Text, ~defaultValue="No articles here... yet.", ()),
    description: Storybook.argType(
      ~control=Text,
      ~defaultValue="This user hasn't written any article yet.",
      (),
    ),
  },
  (),
)
