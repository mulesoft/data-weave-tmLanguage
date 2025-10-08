type Test = (String | Boolean)
type Test2 = String
type Test4 = (String | Boolean | (String, Boolean) -> Boolean)
type Test5 = (String | Boolean | (String, Boolean) -> (Boolean))
type Test6 = ((String, Boolean) -> (Boolean))
type Test7 = (String | Boolean | (String | Boolean) | Boolean) -> Boolean