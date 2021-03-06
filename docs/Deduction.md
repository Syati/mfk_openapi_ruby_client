# MfkOpenapiRubyClient::Deduction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** | 債権合計額から控除される合計金額です。 | [optional] |
| **canceled_reconciliation_amount** | **Integer** | 入金消込の解除による回収金額の返金額です。 | [optional] |
| **returned_credit_amount** | **Integer** | キャンセルによる債権金額の返金額です。 | [optional] |
| **tax** | [**DeductionTax**](DeductionTax.md) |  | [optional] |
| **taxable** | [**DeductionTaxable**](DeductionTaxable.md) |  | [optional] |
| **tax_free** | [**DeductionTaxFree**](DeductionTaxFree.md) |  | [optional] |
| **untaxable** | [**DeductionUntaxable**](DeductionUntaxable.md) |  | [optional] |

## Example

```ruby
require 'mfk_openapi_ruby_client'

instance = MfkOpenapiRubyClient::Deduction.new(
  amount: 10000,
  canceled_reconciliation_amount: 10000,
  returned_credit_amount: 10000,
  tax: null,
  taxable: null,
  tax_free: null,
  untaxable: null
)
```

