type X = () -> HashMapSetOperation<T>
type X = <T>(key: String, value: T) -> HashMapSetOperation<T>
type HttpServer = {
  running: Boolean,
  port: Number,
  host: String,
  stop: () -> Boolean
}