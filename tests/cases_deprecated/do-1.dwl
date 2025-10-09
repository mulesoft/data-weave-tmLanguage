fun testParam(a) = do {
  var originalA = a
  ---
  a map $
}
---
{
  result: do {
    var a = 1
    var b = do {
      var a = {x: "2", y: false}
      var b = log('Must log')
      ---
      a.x as Number
    }
    var b = do {
      var a = "outer"
      ---
      do {
        var a = "inner"
        ---
        a
      } ++ "|" ++ a
    }
    var c = do { var a = 1 fun f(n) = "Shoki_" ++ n --- f map (a) }
    ---
    { result: a + b, a: a, b: b }
  },
  x: testParam(2)
}