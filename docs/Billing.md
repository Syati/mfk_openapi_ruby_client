# MfkOpenapiRubyClient::Billing

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** | 請求の**税込**の合計金額です。請求に含まれる取引金額の合計です。 | [optional] |
| **amounts_per_tax_rate_type** | [**Array&lt;AmountPerTaxRateType&gt;**](AmountPerTaxRateType.md) | 各税率種別毎の**税込**の合計金額です。各税率種別の取引金額を合計した値になっています。 | [optional] |
| **customer_id** | **String** | 顧客IDです。請求の顧客を示します。 | [optional] |
| **destination_id** | **String** | 請求先IDです。請求先を示します。 | [optional] |
| **due_date** | **Date** | 支払期限です。 | [optional] |
| **id** | **String** | 請求IDです。一意の識別子として自動で付与されます。請求先ID・支払期限・請求書発行日・取引登録方式が同一の取引がこの請求によってまとめられます。請求書は請求をもとに発行されます。 | [optional] |
| **invoice_delivery_methods** | [**Array&lt;InvoiceDeliveryMethod&gt;**](InvoiceDeliveryMethod.md) | 請求書送付方法です。郵送(posting) またはメール送付(email)のうちから少なくとも１つを指定してください。どちらも選択された場合、どちらの方法でも送付されます。 また、各取引で指定しなかった送付方法でも、請求にまとまった取引のうちでその送付方法を選択しているものがあれば、そちらの送付方法も採用されます。 | [optional] |
| **issue_date** | **Date** | 請求書発行日です。請求書送付日については[こちら](https://support.mfkessai.co.jp/hc/ja/articles/900002297303-%E8%AB%8B%E6%B1%82%E6%9B%B8%E7%99%BA%E8%A1%8C%E6%97%A5%E3%81%AB%E3%81%A4%E3%81%84%E3%81%A6)をご参照ください。 | [optional] |
| **object** | **String** | このObjectの種別を示します。ここでは必ず&#x60;billing&#x60;が入ります。 | [optional] |
| **status** | **String** | 請求ステータスです。請求予定(&#x60;scheduled&#x60;)、請求書発行済(&#x60;invoice_issued&#x60;) 、口座振替通知済(&#x60;account_transfer_notified&#x60;)で指定されます。 | [optional] |
| **unpaid** | [**BillingUnpaid**](BillingUnpaid.md) |  | [optional] |
| **uri** | **String** | 請求URIです。すべてのリソースで一意の識別子として自動で付与されます。 | [optional] |

## Example

```ruby
require 'mfk_openapi_ruby_client'

instance = MfkOpenapiRubyClient::Billing.new(
  amount: 12000,
  amounts_per_tax_rate_type: null,
  customer_id: WNAV-37R6,
  destination_id: 7679-YW36,
  due_date: Tue Apr 30 00:00:00 GMT 2019,
  id: 9R6M-VMAN,
  invoice_delivery_methods: [posting, email],
  issue_date: Sat Apr 20 00:00:00 GMT 2019,
  object: billing,
  status: invoice_issued,
  unpaid: null,
  uri: mfk:billing:9R6M-VMAN
)
```

