# MfkOpenapiRubyClient::PayoutRefund

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** | 返金金額です。 | [optional] |
| **commission_amount** | **Integer** | 手数料の金額です。 | [optional] |
| **customer_id** | **String** | 顧客IDです。この返金が紐づく顧客を示します。 | [optional] |
| **id** | **String** | 返金IDです。一意の識別子として自動で付与されます。 | [optional] |
| **object** | **String** | このObjectの種別を示します。ここでは必ず&#x60;payout_refund&#x60;が入ります。 | [optional] |
| **payout_id** | **String** | 返金が含まれる振込のIDです。 | [optional] |
| **transaction_id** | **String** | 取引IDです。この返金が紐づく取引を示します。 | [optional] |
| **uri** | **String** | 返金URIです。すべてのリソースで一意の識別子として自動で付与されます。 | [optional] |

## Example

```ruby
require 'mfk_openapi_ruby_client'

instance = MfkOpenapiRubyClient::PayoutRefund.new(
  amount: 10000,
  commission_amount: 100,
  customer_id: W463-AA6V,
  id: 9NR3-P9A6,
  object: payout_refund,
  payout_id: 7679-YW36,
  transaction_id: GY9N-EWNM,
  uri: mfk:payout_refund:9NR3-P9A6
)
```

