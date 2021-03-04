# MfkOpenapiRubyClient::CustomerExaminationsList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **items** | [**Array&lt;CustomerExamination&gt;**](CustomerExamination.md) | 与信枠審査一覧です。 | [optional] |
| **object** | **String** | このObjectの種別を示します。ここでは必ず &#x60;list&#x60;が設定されます。 | [optional] |
| **pagination** | [**Pagination**](Pagination.md) |  | [optional] |

## Example

```ruby
require 'mfk_openapi_ruby_client'

instance = MfkOpenapiRubyClient::CustomerExaminationsList.new(
  items: null,
  object: list,
  pagination: null
)
```

