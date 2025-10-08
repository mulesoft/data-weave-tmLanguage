type FormData<T> = {(T): String}
type StringDict = {_: String}
type HttpRequest = {
  headers?: HttpHeaders,
  method?: String,
  url: String,
  allowRedirect?: Boolean,
  body?: String
}

type XmlType = {
  headers @(name: String, age?: Number): HttpHeaders,
  foo @(name: String, age: Number)?: HttpHeaders
}
ns ns0 http://mulesoft.com/dw
ns ns1 http://mulesoft.com/mule
type FN = get: (key: String) -> T | Null
type FN = get: (String) -> T | Null
type XmlUser = {
                  ns0#root:
                      {
                        ns0#name: String,
                        ns0#lastName: String
                        }
                  }

type close = {| name: String, age: Number |}
type ordered = {- name: String, age: Number -}
type orderedClose = {-| name: String, age: Number |-}
type repeatedFields = {name: String, age: Number, friend *: String }
type repeatedFieldsOptional = {name: String, age: Number, friend*: String , brother *?: String }
type optionalField = {name?: String, age: Number}

type Book = {name: String, authors: Array<User>, price: Number}
type User = {name: String,lastName: String, "key with spaces": Number}
type Account = {email: String, id: String}
type MyUser = Object {class: "com.mulesoft.MyUser"}

type IHashMap<T> = {
  get: (key: String) -> T | Null,
  set: (key: String, value: T) -> HashMapSetOperation<T>,
  instance: Any,
  getAll: () -> { _?: T }
}

type HashMapSetOperation<T> = {|
  operation: String,
  prevValue: T | Null & Dsa,
  newValue: T,
  key: String
|}

fun HashMap(): IHashMap<Any> = native("bat::HashMap")

type IListBuffer<T> = {
  peek: () -> T,
  pop: () -> T,
  push: (item: T) -> T,
  removeAt: (at: Number) -> T,
  getAt: (at: Number) -> T,
  setAt: (at: Number, item: T) -> T,
  instance: Any,
  items: () -> Array<T>,
  length: () -> Number
}

fun ListBuffer(): IListBuffer<Any> = native("bat::ListBuffer")

fun test(value:Null):Null = null

fun test2(value:Null, callback:(Nothing,Nothing) -> Any):Null = null

fun toAccount(user: User) : Account = {
   email: "$(user.name).$(user.lastName)@mulesoft.com",
   id: user.name
}
---
toAccount({name: "Mariano", lastName: "Achaval"})