# MfkOpenapiRubyClient::BillingUnpaid

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shortage_amount** | **Integer** | 未入金額です。 | [optional] |
| **updated_date** | **Date** | 入金情報が最後に更新された日付です。この日付以降に入金されている可能性があります。 | [optional] |

## Example

```ruby
require 'mfk_openapi_ruby_client'

instance = MfkOpenapiRubyClient::BillingUnpaid.new(
  shortage_amount: 12000,
  updated_date: Tue Apr 30 00:00:00 GMT 2019
)
```

