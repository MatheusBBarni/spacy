module Styles: {
  let input: (~error: option<'a>) => string
  let error: string
}
@react.component
let make: (
  ~placeholder: string=?,
  ~onChange: ReactEvent.Form.t => unit=?,
  ~type_: string=?,
  ~disabled: bool=?,
  ~error: string=?,
) => React.element
