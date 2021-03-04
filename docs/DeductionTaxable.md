# MfkOpenapiRubyClient::DeductionTaxable

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** | 課税対象の控除金額です。 | [optional] |
| **basic_monthly_charge** | **Integer** | 月額基本料金です。 | [optional] |
| **billing_charge** | [**DeductionTaxableBillingCharge**](DeductionTaxableBillingCharge.md) |  | [optional] |
| **posting** | [**DeductionTaxablePosting**](DeductionTaxablePosting.md) |  | [optional] |
| **convenience_billing** | [**DeductionTaxableConvenienceBilling**](DeductionTaxableConvenienceBilling.md) |  | [optional] |

## Example

```ruby
require 'mfk_openapi_ruby_client'

instance = MfkOpenapiRubyClient::DeductionTaxable.new(
  amount: 25000,
  basic_monthly_charge: 10000,
  billing_charge: null,
  posting: null,
  convenience_billing: null
)
```

