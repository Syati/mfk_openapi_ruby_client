# MfkOpenapiRubyClient::CustomerPayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **destination** | [**CustomerPayloadDestination**](CustomerPayloadDestination.md) |  |  |
| **customer_examination** | [**CustomerPayloadCustomerExamination**](CustomerPayloadCustomerExamination.md) |  | [optional] |
| **name** | **String** | 顧客名です。 |  |
| **number** | **String** | 顧客に付与できる任意の顧客番号です。Money Forward Kessaiが発番する顧客IDをとは別で、売り手様が独自に管理する識別子を登録することができます。 ただし、売り手様の所有する顧客間で一意である必要があります。 |  |

## Example

```ruby
require 'mfk_openapi_ruby_client'

instance = MfkOpenapiRubyClient::CustomerPayload.new(
  destination: null,
  customer_examination: null,
  name: サンプル顧客,
  number: CUSTOMER0001
)
```

