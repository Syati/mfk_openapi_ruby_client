# MfkOpenapiRubyClient::DestinationPayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address1** | **String** | 都道府県・市区町村・番地です。必ず都道府県名から始めてください。 |  |
| **address2** | **String** | 建物名・部屋番号などです。 | [optional] |
| **cc_emails** | **Array&lt;String&gt;** | 請求書をメール送付する際のCCメールアドレスです。最大で4件まで指定できます。 | [optional] |
| **customer_id** | **String** | 請求先を登録する顧客のIDです。 |  |
| **department** | **String** | 担当者の部署名です。 | [optional] |
| **email** | **String** | メールアドレスです。email形式で指定してください。 |  |
| **name** | **String** | 担当者氏名です。 | [optional] |
| **name_kana** | **String** | 担当者名カナです。全角カタカナで入力してください。 | [optional] |
| **tel** | **String** | 電話番号です。ハイフン有無は任意になります。 |  |
| **title** | **String** | 担当者の役職です。 | [optional] |
| **zip_code** | **String** | 郵便番号です。ハイフン有無は任意になります。但しハイフン無しで登録されますと、請求書にもハイフン無しで記載されます。 |  |

## Example

```ruby
require 'mfk_openapi_ruby_client'

instance = MfkOpenapiRubyClient::DestinationPayload.new(
  address1: 東京都千代田区1-2-3,
  address2: サンプルビル3F,
  cc_emails: [another.tanto1@example.jp, another.tanto2@example.jp],
  customer_id: 7679-YW36,
  department: 経理部,
  email: kessai.tanto@example.jp,
  name: 担当　太郎,
  name_kana: タントウ　タロウ,
  tel: 03-1234-5678,
  title: 部長,
  zip_code: 111-1111
)
```

