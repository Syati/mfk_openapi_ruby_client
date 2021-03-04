# MfkOpenapiRubyClient::PaymentMethod

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_transfer** | [**AccountTransfer**](AccountTransfer.md) |  | [optional] |
| **bank_transfer** | [**BankTransfer**](BankTransfer.md) |  | [optional] |
| **object** | **String** | このObjectの種別を示します。ここでは必ず&#x60;payment_method&#x60;が入ります。 | [optional] |

## Example

```ruby
require 'mfk_openapi_ruby_client'

instance = MfkOpenapiRubyClient::PaymentMethod.new(
  account_transfer: null,
  bank_transfer: null,
  object: payment_method
)
```

