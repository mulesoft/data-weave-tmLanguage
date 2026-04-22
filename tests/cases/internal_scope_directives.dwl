%dw 2.0
output application/xml

internal ns ns0 = "http://myns"

internal type MY_STRING = String

internal var a = "internal"

internal fun hi(t: MY_STRING) = t
---
root: {
  a: a,
  hi: hi("hi")
  ns0#h: 123,
}
