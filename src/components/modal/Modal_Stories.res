open AncestorSpacy

let default = Storybook.make(
  ~title="Components/Modal",
  ~component={
    () => {
      <Modal trigger={<Button label="Open Modal" />}>
        <Modal.Close /> <Box minW=[xs(400->#px)] minH=[xs(350->#px)] />
      </Modal>
    }
  },
  (),
)
