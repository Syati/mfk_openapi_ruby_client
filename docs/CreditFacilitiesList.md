# MfkOpenapiRubyClient::CreditFacilitiesList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **items** | [**Array&lt;CreditFacility&gt;**](CreditFacility.md) | 与信枠一覧です。 | [optional] |
| **object** | **String** | このObjectの種別を示します。ここでは必ず &#x60;list&#x60;が設定されます。 | [optional] |
| **pagination** | [**Pagination**](Pagination.md) |  | [optional] |

## Example

```ruby
require 'mfk_openapi_ruby_client'

instance = MfkOpenapiRubyClient::CreditFacilitiesList.new(
  items: null,
  object: list,
  pagination: null
)
```

