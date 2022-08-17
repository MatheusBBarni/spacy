let default = Storybook.make(
  ~title="Components/Dropdown",
  ~component={
    () => {
      <Dropdown trigger={<ProfileName name="Matheus Barni" size=#lg />}>
        <Dropdown.Item label="Profile" /> <Dropdown.Item label="Sign out" />
      </Dropdown>
    }
  },
  (),
)
