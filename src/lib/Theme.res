module Colors = {
  type t = [
    | #primary100
    | #primary200
    | #primary300
    | #primary400
    | #primary500
    | #primary600
    | #primary700
    | #red
  ]

  let color = (color: t) =>
    switch color {
    | #primary100 => "#fafafa"->#hex
    | #primary200 => "#b1b1b1"->#hex
    | #primary300 => "#777777"->#hex
    | #primary400 => "#4F4F4F"->#hex
    | #primary500 => "#2C2C2C"->#hex
    | #primary600 => "#1D1D1D"->#hex
    | #primary700 => "#171717"->#hex
    | #red => "#FF1E54"->#hex
    }

  let make = (value: t) => value->color->Ancestor.Css.Color.toString
}

module ZIndex = {
  type t = [
    | #base
    | #hidden
    | #above
    | #aboveAll
  ]

  let make = (value: t) =>
    switch value {
    | #aboveAll => 100
    | #above => 50
    | #base => 10
    | #hidden => -1
    }
}

module Constants = {
  let fontFamily = "DM Sans, sans-serif"
}

module Spacing = {
  type t = float

  let spacing = v => #pxFloat(v *. 8.0)

  let make = v => v->spacing->Ancestor.Css.Length.toString
}

module Radius = {
  type t = float

  let radius = v => #pxFloat(v *. 8.0)

  let make = v => v->radius->Ancestor.Css.Length.toString
}

let spacing = Spacing.make
let radius = Radius.make
