# MfkOpenapiRubyClient::Error

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | エラーコードです。それぞれの説明については、[エラーコード](https://mfkessai.co.jp/developer/v2/docs/#error_codes)を参照してください。 | [optional] |
| **message** | **String** | エラー発生原因に関する情報です。 | [optional] |
| **param** | **String** | 何らかの値に関連するエラーの場合その値が入ります。 | [optional] |
| **type** | **String** | エラー種別です。 | [optional] |

## Example

```ruby
require 'mfk_openapi_ruby_client'

instance = MfkOpenapiRubyClient::Error.new(
  code: null,
  message: null,
  param: null,
  type: null
)
```

