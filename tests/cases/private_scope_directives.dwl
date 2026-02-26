%dw 2.0
output application/xml

private ns ns0 = "http://myns"

private type MY_STRING = String

private var a = "private"

private fun hi(t: MY_STRING) = t
---
root: {
  a: a,
  hi: hi("hi")
  ns0#h: 123,
}