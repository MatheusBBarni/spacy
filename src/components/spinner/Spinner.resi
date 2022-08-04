module Styles: {
  let rotate: string
  let dash: string
  let spinner: (~size: Ancestor.Css.Length.t) => string
  let spinnerBg: (~color: Ancestor.Css.Color.t) => string
  let circle: (~color: Ancestor.Css.Color.t) => string
}
@react.component
let make: (
  ~color: Ancestor.Css.Color.t=?,
  ~background: Ancestor.Css.Color.t=?,
  ~size: Ancestor.Css.Length.t=?,
) => React.element
