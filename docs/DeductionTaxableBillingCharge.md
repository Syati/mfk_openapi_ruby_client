# MfkOpenapiRubyClient::DeductionTaxableBillingCharge

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** | 付随請求業務手数料です。 | [optional] |
| **quantity** | **Integer** | 請求件数です。 | [optional] |
| **unit_price** | **Integer** | 請求１件あたりの付随請求業務手数料です。 | [optional] |

## Example

```ruby
require 'mfk_openapi_ruby_client'

instance = MfkOpenapiRubyClient::DeductionTaxableBillingCharge.new(
  amount: 2000,
  quantity: 10,
  unit_price: 200
)
```

