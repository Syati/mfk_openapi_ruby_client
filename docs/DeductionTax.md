# MfkOpenapiRubyClient::DeductionTax

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** | 消費税額です。 | [optional] |
| **rate_type** | [**TaxRateType**](TaxRateType.md) |  | [optional] |

## Example

```ruby
require 'mfk_openapi_ruby_client'

instance = MfkOpenapiRubyClient::DeductionTax.new(
  amount: 10000,
  rate_type: null
)
```

