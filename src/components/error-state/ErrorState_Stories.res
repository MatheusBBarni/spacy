type props = {
  title: Storybook.argTypes<string>,
  description: Storybook.argTypes<string>,
}

let default = Storybook.make(
  ~title="Components/ErrorState",
  ~component=ErrorState.make,
  ~argTypes={
    title: Storybook.argType(~control=Text, ~defaultValue="Something went wrong.", ()),
    description: Storybook.argType(
      ~control=Text,
      ~defaultValue="This user hasn't written any article yet.",
      (),
    ),
  },
  (),
)

let withCta = () =>
  <ErrorState
    title="Something went wrong."
    description="This user hasn't written any article yet."
    cta=("Try again", _ => Console.log("Trying..."))
  />
