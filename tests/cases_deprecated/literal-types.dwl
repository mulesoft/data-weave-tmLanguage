type CardinalDirection = "North" | "East" | "South" | "West"

type OneToThree = 1 | 2 | 3

type QubitBool = true | false | "Superposition"

fun foo(a: 123, b: "Hola" | "Chau"): true = true
---
{}