%dw 2.0
output application/json

fun f<T, U, V>(t: T, u: U, v: V) = t
---
f<Name | String, {|a: String|} & {b: Number}, 3>("a", {}, 3)