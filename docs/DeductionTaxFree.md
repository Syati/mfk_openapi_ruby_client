# MfkOpenapiRubyClient::DeductionTaxFree

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** | 非課税の控除金額です。 | [optional] |
| **commission_amount** | **Integer** | 手数料の金額です。 | [optional] |
| **early_payout_commission_amount** | **Integer** | 早期振込手数料の金額です。 | [optional] |

## Example

```ruby
require 'mfk_openapi_ruby_client'

instance = MfkOpenapiRubyClient::DeductionTaxFree.new(
  amount: 1000,
  commission_amount: 10000,
  early_payout_commission_amount: 10000
)
```

