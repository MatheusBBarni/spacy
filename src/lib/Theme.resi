module Colors: {
  let primary100: [> #hex(string)]
  let primary200: [> #hex(string)]
  let primary300: [> #hex(string)]
  let primary400: [> #hex(string)]
  let primary500: [> #hex(string)]
  let primary600: [> #hex(string)]
  let primary700: [> #hex(string)]
  let red: [> #hex(string)]
  let toString: Ancestor.Css.Color.t => string
}
module ZIndex: {
  let aboveAll: int
  let above: int
  let base: int
  let hidden: int
}
module Constants: {
  let fontFamily: string
}
let spacing: float => string
let radius: float => string
