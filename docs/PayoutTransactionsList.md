# MfkOpenapiRubyClient::PayoutTransactionsList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **items** | [**Array&lt;PayoutTransaction&gt;**](PayoutTransaction.md) | 債権一覧です。 | [optional] |
| **object** | **String** | このObjectの種別を示します。ここでは必ず &#x60;list&#x60;が設定されます。 | [optional] |
| **pagination** | [**Pagination**](Pagination.md) |  | [optional] |

## Example

```ruby
require 'mfk_openapi_ruby_client'

instance = MfkOpenapiRubyClient::PayoutTransactionsList.new(
  items: null,
  object: list,
  pagination: null
)
```

