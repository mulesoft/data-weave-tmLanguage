ns mule_mule asd
ns http asd
---
mule_mule#flow @(
  name: "HelloWorldFlow1"
): {
  http#"inbound-endpoint" @("exchange-pattern": "request-response", host: "localhost"): null,
  mule_mule#set_payload @(value123: "Hello World"): null
}