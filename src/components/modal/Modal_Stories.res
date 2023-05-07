open AncestorSpacy

let default = Storybook.make(
  ~title="Components/Modal",
  ~component={
    () => {
      <Modal.Root>
        <Modal.Trigger asChild=true>
          <Button label="Open Modal" />
        </Modal.Trigger>
        <Modal.Overlay />
        <Modal.Content>
          <Modal.Close />
          <Box minW=[xs(400->#px)] minH=[xs(350->#px)] />
        </Modal.Content>
      </Modal.Root>
    }
  },
  (),
)
