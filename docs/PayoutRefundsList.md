# MfkOpenapiRubyClient::PayoutRefundsList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **items** | [**Array&lt;PayoutRefund&gt;**](PayoutRefund.md) | 返金一覧です。 | [optional] |
| **object** | **String** | このObjectの種別を示します。ここでは必ず &#x60;list&#x60;が設定されます。 | [optional] |
| **pagination** | [**Pagination**](Pagination.md) |  | [optional] |

## Example

```ruby
require 'mfk_openapi_ruby_client'

instance = MfkOpenapiRubyClient::PayoutRefundsList.new(
  items: null,
  object: list,
  pagination: null
)
```

