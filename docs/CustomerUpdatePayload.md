# MfkOpenapiRubyClient::CustomerUpdatePayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **number** | **String** | 顧客に付与できる任意の顧客番号です。Money Forward Kessaiが発番する顧客IDをとは別で、売り手様が独自に管理する識別子を登録することができます。 ただし、売り手様の所有する顧客間で一意である必要があります。指定がないか空文字の場合は更新されません。 | [optional] |

## Example

```ruby
require 'mfk_openapi_ruby_client'

instance = MfkOpenapiRubyClient::CustomerUpdatePayload.new(
  number: CUSTOMER0001
)
```

