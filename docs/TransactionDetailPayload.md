# MfkOpenapiRubyClient::TransactionDetailPayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Float** | 小計です。単価(&#x60;unit_price&#x60;)×数量(&#x60;quantity&#x60;)の金額を指定してください。またはその金額の税込金額も指定可能です。 | [optional] |
| **amount_str** | **String** | 小計を文字列で指定してください。こちらが指定されている場合、数値型のamountは無視されます。単価(&#x60;unit_price&#x60;)×数量(&#x60;quantity&#x60;)の金額を指定してください。 | [optional] |
| **description** | **String** | 商品名などです。&lt;br&gt;Sandbox環境において取引審査で任意の結果を指定するためにこの値を用います。詳しくは[審査結果の操作](#environment_magic_number)を参照ください。 |  |
| **tax_included_type** | [**TaxIncludedType**](TaxIncludedType.md) |  |  |
| **tax_rate_type** | [**TaxRateType**](TaxRateType.md) |  |  |
| **quantity** | **Float** | 数量を指定してください。 | [optional] |
| **quantity_str** | **String** | 数量を文字列で指定してください。こちらが指定されている場合、数値型のquantityは無視されます。 | [optional] |
| **unit_price** | **Float** | 単価を指定してください。 | [optional] |
| **unit_price_str** | **String** | 単価を文字列で指定してください。こちらが指定されている場合、数値型のunit_priceは無視されます。 | [optional] |

## Example

```ruby
require 'mfk_openapi_ruby_client'

instance = MfkOpenapiRubyClient::TransactionDetailPayload.new(
  amount: 12000.0,
  amount_str: 12000.5,
  description: 商品名A,
  tax_included_type: null,
  tax_rate_type: null,
  quantity: 3.0,
  quantity_str: 3.14,
  unit_price: 1000.0,
  unit_price_str: 1.5
)
```

