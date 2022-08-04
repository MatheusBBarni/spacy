type size = [#lg | #md]
module Styles: {
  let transition: string
  let button: (~size: [< #lg | #md], ~block: bool) => string
}
@react.component
let make: (
  ~label: string,
  ~size: size=?,
  ~disabled: bool=?,
  ~block: bool=?,
  ~onClick: ReactEvent.Mouse.t => unit=?,
  ~loading: bool=?,
) => React.element
