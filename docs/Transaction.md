# MfkOpenapiRubyClient::Transaction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accepted_at** | **Time** | 債権譲受日時です。 | [optional] |
| **amount** | **Integer** | 取引の合計金額です。**税込**金額になります。 | [optional] |
| **amounts_per_tax_rate_type** | [**Array&lt;AmountPerTaxRateType&gt;**](AmountPerTaxRateType.md) | 各税率種別毎の**税込**の合計金額です。各税率種別の取引明細行の小計を合計した値の税込金額になっています。 | [optional] |
| **billing** | **Boolean** | 請求対象であるかをboolean値で表します。&#x60;true&#x60;の場合請求対象で、&#x60;false&#x60;の場合は請求対象ではないことを表します。 | [optional] |
| **billing_accepted_at** | **Time** | 請求依頼受領日時です。請求対象になった日時を表します。請求対象でない場合は空になります。 | [optional] |
| **billing_condition** | [**BillingCondition**](BillingCondition.md) |  | [optional] |
| **billing_id** | **String** | 請求IDです。請求書にまとめられる単位のIDです。同じ請求IDを持つ取引とまとめられて請求書に記載されます。 | [optional] |
| **canceled_at** | **Time** | 取引がキャンセルされた日時です。未キャンセルの場合は空になります。 | [optional] |
| **created_at** | **Time** | 取引が登録された日時です。 | [optional] |
| **customer_id** | **String** | 顧客IDです。 | [optional] |
| **destination_id** | **String** | 請求先IDです。取引の請求先を示します。 | [optional] |
| **date** | **Date** | 取引日です。売り手様と顧客様の間で取引を行った日付です。 | [optional] |
| **due_date** | **Date** | 支払期限です。この日付を超えてMoney Forward Kessaiへの入金が確認できない場合は未入金になります。 | [optional] |
| **id** | **String** | 取引IDです。一意の識別子として自動で付与されます。 | [optional] |
| **invoice_delivery_methods** | [**Array&lt;InvoiceDeliveryMethod&gt;**](InvoiceDeliveryMethod.md) | 請求書送付方法です。郵送(posting) またはメール送付(email)のうちから少なくとも１つになります。どちらも選択された場合、どちらの方法でも送付されます。 また、各取引で指定しなかった送付方法でも、請求にまとまった取引のうちでその送付方法を選択しているものがあれば、そちらの送付方法も採用されます。 | [optional] |
| **issue_date** | **Date** | 請求書発行日です。請求書発送日については&lt;a href&#x3D;\&quot;https://support.mfkessai.co.jp/hc/ja/articles/900002297303-%E8%AB%8B%E6%B1%82%E6%9B%B8%E7%99%BA%E8%A1%8C%E6%97%A5%E3%81%AB%E3%81%A4%E3%81%84%E3%81%A6\&quot; target&#x3D;\&quot;_blank\&quot;&gt;請求書発行日について&lt;/a&gt;を参照ください。 | [optional] |
| **number** | **String** | 取引に付与できる任意の取引番号です。Money Forward Kessaiが自動で付与する取引IDとは別で、売り手様が独自に管理する識別子を登録することができます。ただし、売り手様の所有する取引間で一意である必要があります。 | [optional] |
| **object** | **String** | このObjectの種別を示します。ここでは必ず&#x60;transaction&#x60;が入ります。 | [optional] |
| **status** | **String** | 取引ステータスです。審査中(&#x60;unexamined&#x60;)、審査通過(&#x60;passed&#x60;)、審査否決(&#x60;rejected&#x60;)、キャンセル済(&#x60;canceled&#x60;)があります。 | [optional] |
| **transaction_details** | [**Array&lt;TransactionDetail&gt;**](TransactionDetail.md) | 取引明細行です。 | [optional] |
| **uri** | **String** | 取引URIです。すべてのリソースで一意の識別子として自動で付与されます。 | [optional] |

## Example

```ruby
require 'mfk_openapi_ruby_client'

instance = MfkOpenapiRubyClient::Transaction.new(
  accepted_at: 2019-04-03T10:36:43+09:00,
  amount: 2180,
  amounts_per_tax_rate_type: null,
  billing: true,
  billing_accepted_at: 2019-04-22T10:36:43+09:00,
  billing_condition: null,
  billing_id: 9R6M-VMAN,
  canceled_at: 2019-04-22T10:36:43+09:00,
  created_at: 2019-04-01T10:36:43+09:00,
  customer_id: 9PNG-VYR6,
  destination_id: WNAV-37R6,
  date: Mon Apr 01 00:00:00 GMT 2019,
  due_date: Tue Apr 30 00:00:00 GMT 2019,
  id: 7679-YW36,
  invoice_delivery_methods: [posting, email],
  issue_date: Sat Apr 20 00:00:00 GMT 2019,
  number: Transaction-0001,
  object: transaction,
  status: passed,
  transaction_details: null,
  uri: mfk:transaction:7679-YW36
)
```

