open AncestorSpacy

let default = () => {
  <Box p=[xs(4.)] bgColor=[xs(#primary700)]>
    <Typography color=[xs(#primary100)] fontSize=[xs(24->#px)]>
      {`Ancestor`->React.string}
    </Typography>
  </Box>
}
