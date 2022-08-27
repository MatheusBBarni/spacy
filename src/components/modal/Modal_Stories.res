let default = Storybook.make(
  ~title="Components/Modal",
  ~component={
    () => {
      <Modal trigger={<Button label="Open Modal" />}> <div /> </Modal>
    }
  },
  (),
)
