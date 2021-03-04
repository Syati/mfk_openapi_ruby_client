# MfkOpenapiRubyClient::DeductionUntaxableRevenueStamp

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** | 収入印紙代です。 | [optional] |
| **quantity** | **Integer** | 収入印紙件数です。 | [optional] |
| **unit_price** | **Integer** | 収入印紙１件あたりの料金です。 | [optional] |

## Example

```ruby
require 'mfk_openapi_ruby_client'

instance = MfkOpenapiRubyClient::DeductionUntaxableRevenueStamp.new(
  amount: 15000,
  quantity: 100,
  unit_price: 150
)
```

