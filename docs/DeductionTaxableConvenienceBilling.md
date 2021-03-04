# MfkOpenapiRubyClient::DeductionTaxableConvenienceBilling

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **charge** | **Integer** | コンビニ払込手数料です。 | [optional] |
| **quantity** | **Integer** | コンビニ払込件数です。 | [optional] |
| **unit_price** | **Integer** | コンビニ払込１件あたりの手数料です。 | [optional] |

## Example

```ruby
require 'mfk_openapi_ruby_client'

instance = MfkOpenapiRubyClient::DeductionTaxableConvenienceBilling.new(
  charge: 15000,
  quantity: 100,
  unit_price: 150
)
```

