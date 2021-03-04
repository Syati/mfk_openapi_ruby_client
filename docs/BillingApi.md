# MfkOpenapiRubyClient::BillingApi

All URIs are relative to *https://sandbox-api.mfkessai.co.jp/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_billing**](BillingApi.md#get_billing) | **GET** /billings/{billing_id} |  |
| [**get_billings_list**](BillingApi.md#get_billings_list) | **GET** /billings |  |


## get_billing

> <Billing> get_billing(billing_id)



請求取得

### Examples

```ruby
require 'time'
require 'mfk_openapi_ruby_client'
# setup authorization
MfkOpenapiRubyClient.configure do |config|
  # Configure API key authorization: apikey
  config.api_key['apikey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apikey'] = 'Bearer'
end

api_instance = MfkOpenapiRubyClient::BillingApi.new
billing_id = 'billing_id_example' # String | 対象の請求IDを指定してください。

begin
  
  result = api_instance.get_billing(billing_id)
  p result
rescue MfkOpenapiRubyClient::ApiError => e
  puts "Error when calling BillingApi->get_billing: #{e}"
end
```

#### Using the get_billing_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Billing>, Integer, Hash)> get_billing_with_http_info(billing_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_billing_with_http_info(billing_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Billing>
rescue MfkOpenapiRubyClient::ApiError => e
  puts "Error when calling BillingApi->get_billing_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **billing_id** | **String** | 対象の請求IDを指定してください。 |  |

### Return type

[**Billing**](Billing.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_billings_list

> <BillingsList> get_billings_list(opts)



請求一覧取得

### Examples

```ruby
require 'time'
require 'mfk_openapi_ruby_client'
# setup authorization
MfkOpenapiRubyClient.configure do |config|
  # Configure API key authorization: apikey
  config.api_key['apikey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apikey'] = 'Bearer'
end

api_instance = MfkOpenapiRubyClient::BillingApi.new
opts = {
  customer_id: 'customer_id_example', # String | 任意の顧客IDを指定します。指定した顧客への請求が返却されます。
  customer_number: 'customer_number_example', # String | 顧客番号を指定します。指定された顧客の請求を取得します。
  status: ['scheduled'], # Array<String> | 請求ステータスを指定します。該当するステータスの請求が返却されます。複数指定することが可能です。指定できる値は `scheduled`(請求予定), `invoice_issued`(請求書発行済), `account_transfer_notified`(口座振替通知済)の3種類のみです。
  due_date_from: Date.parse('2013-10-20'), # Date | 日付を指定します。指定した日付以降の支払期限となっている請求を取得できます。指定された日付のものも含まれます。
  due_date_to: Date.parse('2013-10-20'), # Date | 日付を指定します。指定した日付以前の支払期限となっている請求を取得できます。指定された日付のものも含まれます。
  issue_date_from: Date.parse('2013-10-20'), # Date | 日付を指定します。指定した日付以降の請求書発行日となっている請求を取得できます。指定された日付のものも含まれます。
  issue_date_to: Date.parse('2013-10-20'), # Date | 日付を指定します。指定した日付以前の請求書発行日となっている請求を取得できます。指定された日付のものも含まれます。
  unpaid: true, # Boolean | 未入金のあり(`true`)、なし(`false`)を指定します。空文字が指定された場合、`false`として扱われます。
  after: 'after_example', # String | 任意のリソースIDを指定します。追加日時の降順でこのIDのリソースよりも後のリソースを取得します。この時`after`で指定したIDのリソースは結果に含まれません。
  before: 'before_example', # String | 任意のリソースIDを指定します。追加日時の降順でこのIDのリソースよりも前のリソースを取得します。この時`before`で指定したIDのリソースは結果に含まれません。
  limit: 56 # Integer | 取得したいリソースの最大件数を指定します。1~200の間の整数で指定してください。指定がない場合は20になります。
}

begin
  
  result = api_instance.get_billings_list(opts)
  p result
rescue MfkOpenapiRubyClient::ApiError => e
  puts "Error when calling BillingApi->get_billings_list: #{e}"
end
```

#### Using the get_billings_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BillingsList>, Integer, Hash)> get_billings_list_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_billings_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BillingsList>
rescue MfkOpenapiRubyClient::ApiError => e
  puts "Error when calling BillingApi->get_billings_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** | 任意の顧客IDを指定します。指定した顧客への請求が返却されます。 | [optional] |
| **customer_number** | **String** | 顧客番号を指定します。指定された顧客の請求を取得します。 | [optional] |
| **status** | [**Array&lt;String&gt;**](String.md) | 請求ステータスを指定します。該当するステータスの請求が返却されます。複数指定することが可能です。指定できる値は &#x60;scheduled&#x60;(請求予定), &#x60;invoice_issued&#x60;(請求書発行済), &#x60;account_transfer_notified&#x60;(口座振替通知済)の3種類のみです。 | [optional] |
| **due_date_from** | **Date** | 日付を指定します。指定した日付以降の支払期限となっている請求を取得できます。指定された日付のものも含まれます。 | [optional] |
| **due_date_to** | **Date** | 日付を指定します。指定した日付以前の支払期限となっている請求を取得できます。指定された日付のものも含まれます。 | [optional] |
| **issue_date_from** | **Date** | 日付を指定します。指定した日付以降の請求書発行日となっている請求を取得できます。指定された日付のものも含まれます。 | [optional] |
| **issue_date_to** | **Date** | 日付を指定します。指定した日付以前の請求書発行日となっている請求を取得できます。指定された日付のものも含まれます。 | [optional] |
| **unpaid** | **Boolean** | 未入金のあり(&#x60;true&#x60;)、なし(&#x60;false&#x60;)を指定します。空文字が指定された場合、&#x60;false&#x60;として扱われます。 | [optional] |
| **after** | **String** | 任意のリソースIDを指定します。追加日時の降順でこのIDのリソースよりも後のリソースを取得します。この時&#x60;after&#x60;で指定したIDのリソースは結果に含まれません。 | [optional] |
| **before** | **String** | 任意のリソースIDを指定します。追加日時の降順でこのIDのリソースよりも前のリソースを取得します。この時&#x60;before&#x60;で指定したIDのリソースは結果に含まれません。 | [optional] |
| **limit** | **Integer** | 取得したいリソースの最大件数を指定します。1~200の間の整数で指定してください。指定がない場合は20になります。 | [optional] |

### Return type

[**BillingsList**](BillingsList.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

