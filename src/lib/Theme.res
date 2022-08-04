module Colors = {
  let primary100 = "#fafafa"->#hex
  let primary200 = "#b1b1b1"->#hex
  let primary300 = "#777777"->#hex
  let primary400 = "#4F4F4F"->#hex
  let primary500 = "#2C2C2C"->#hex
  let primary600 = "#1D1D1D"->#hex
  let primary700 = "#171717"->#hex

  let toString = Ancestor.Css.Color.toString
}

module ZIndex = {
  let aboveAll = 100
  let above = 50
  let base = 10
  let hidden = -1
}

module Constants = {
  let fontFamily = "DM Sans, sans-serif"
}

let spacing = AncestorSpacy.Styles.spacing
let radius = AncestorSpacy.Styles.radius