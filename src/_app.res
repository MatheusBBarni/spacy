type pageProps

type props = {
  @as("Component")
  component: React.component<pageProps>,
  pageProps: pageProps
}

let default = (props) => {
  let { component, pageProps } = props

  <div style={ReactDOM.Style.make(~backgroundColor="red", ())}>
    {React.createElement(component, pageProps)}
  </div>
}