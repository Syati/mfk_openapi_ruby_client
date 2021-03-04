# MfkOpenapiRubyClient::DeductionUntaxable

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** | 不課税の控除金額です。 | [optional] |
| **revenue_stamp** | [**DeductionUntaxableRevenueStamp**](DeductionUntaxableRevenueStamp.md) |  | [optional] |

## Example

```ruby
require 'mfk_openapi_ruby_client'

instance = MfkOpenapiRubyClient::DeductionUntaxable.new(
  amount: 15000,
  revenue_stamp: null
)
```

