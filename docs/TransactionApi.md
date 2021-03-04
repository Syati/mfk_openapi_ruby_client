# MfkOpenapiRubyClient::TransactionApi

All URIs are relative to *https://sandbox-api.mfkessai.co.jp/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**cancel_transaction**](TransactionApi.md#cancel_transaction) | **DELETE** /transactions/{transaction_id} | 取引の状態によってはキャンセルができない場合もあります。&lt;a target&#x3D;\&quot;_blank\&quot; href&#x3D;\&quot;https://support.mfkessai.co.jp/hc/ja/articles/900002235166-%E5%8F%96%E5%BC%95%E3%81%AE%E3%82%AD%E3%83%A3%E3%83%B3%E3%82%BB%E3%83%AB\&quot;&gt;キャンセルについて&lt;/a&gt;を参照してください。 |
| [**create_transaction**](TransactionApi.md#create_transaction) | **POST** /transactions | 請求先を指定して取引を登録できます。最長で申請後2営業日以内に審査いたします。&lt;br&gt; Sandbox環境では動作テストのため、任意の審査結果を指定することができます。[審査結果の操作](#environment_magic_number)を参照してください。 |
| [**get_transaction**](TransactionApi.md#get_transaction) | **GET** /transactions/{transaction_id} |  |
| [**get_transactions_list**](TransactionApi.md#get_transactions_list) | **GET** /transactions |  |


## cancel_transaction

> <Transaction> cancel_transaction(transaction_id)

取引の状態によってはキャンセルができない場合もあります。<a target=\"_blank\" href=\"https://support.mfkessai.co.jp/hc/ja/articles/900002235166-%E5%8F%96%E5%BC%95%E3%81%AE%E3%82%AD%E3%83%A3%E3%83%B3%E3%82%BB%E3%83%AB\">キャンセルについて</a>を参照してください。

取引キャンセル

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

api_instance = MfkOpenapiRubyClient::TransactionApi.new
transaction_id = 'transaction_id_example' # String | 対象の取引IDを指定してください。

begin
  # 取引の状態によってはキャンセルができない場合もあります。<a target=\"_blank\" href=\"https://support.mfkessai.co.jp/hc/ja/articles/900002235166-%E5%8F%96%E5%BC%95%E3%81%AE%E3%82%AD%E3%83%A3%E3%83%B3%E3%82%BB%E3%83%AB\">キャンセルについて</a>を参照してください。
  result = api_instance.cancel_transaction(transaction_id)
  p result
rescue MfkOpenapiRubyClient::ApiError => e
  puts "Error when calling TransactionApi->cancel_transaction: #{e}"
end
```

#### Using the cancel_transaction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Transaction>, Integer, Hash)> cancel_transaction_with_http_info(transaction_id)

```ruby
begin
  # 取引の状態によってはキャンセルができない場合もあります。<a target=\"_blank\" href=\"https://support.mfkessai.co.jp/hc/ja/articles/900002235166-%E5%8F%96%E5%BC%95%E3%81%AE%E3%82%AD%E3%83%A3%E3%83%B3%E3%82%BB%E3%83%AB\">キャンセルについて</a>を参照してください。
  data, status_code, headers = api_instance.cancel_transaction_with_http_info(transaction_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Transaction>
rescue MfkOpenapiRubyClient::ApiError => e
  puts "Error when calling TransactionApi->cancel_transaction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transaction_id** | **String** | 対象の取引IDを指定してください。 |  |

### Return type

[**Transaction**](Transaction.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_transaction

> <Transaction> create_transaction(payload)

請求先を指定して取引を登録できます。最長で申請後2営業日以内に審査いたします。<br> Sandbox環境では動作テストのため、任意の審査結果を指定することができます。[審査結果の操作](#environment_magic_number)を参照してください。

取引登録

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

api_instance = MfkOpenapiRubyClient::TransactionApi.new
payload = MfkOpenapiRubyClient::TransactionPayload.new({amount: 5000, amounts_per_tax_rate_type: [MfkOpenapiRubyClient::AmountPerTaxRateType.new({amount: 12000, tax_rate_type: MfkOpenapiRubyClient::TaxRateType::NON_TAXABLE})], date: Date.parse('Mon Apr 01 00:00:00 GMT 2019'), destination_id: 'WNAV-37R6', due_date: Date.parse('Tue Apr 30 00:00:00 GMT 2019'), invoice_delivery_methods: [MfkOpenapiRubyClient::InvoiceDeliveryMethod::POSTING], issue_date: Date.parse('Sat Apr 20 00:00:00 GMT 2019'), number: 'Transaction-0001', transaction_details: [MfkOpenapiRubyClient::TransactionDetailPayload.new({description: '商品名A', tax_included_type: MfkOpenapiRubyClient::TaxIncludedType::INCLUDED, tax_rate_type: MfkOpenapiRubyClient::TaxRateType::NON_TAXABLE})]}) # TransactionPayload | 

begin
  # 請求先を指定して取引を登録できます。最長で申請後2営業日以内に審査いたします。<br> Sandbox環境では動作テストのため、任意の審査結果を指定することができます。[審査結果の操作](#environment_magic_number)を参照してください。
  result = api_instance.create_transaction(payload)
  p result
rescue MfkOpenapiRubyClient::ApiError => e
  puts "Error when calling TransactionApi->create_transaction: #{e}"
end
```

#### Using the create_transaction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Transaction>, Integer, Hash)> create_transaction_with_http_info(payload)

```ruby
begin
  # 請求先を指定して取引を登録できます。最長で申請後2営業日以内に審査いたします。<br> Sandbox環境では動作テストのため、任意の審査結果を指定することができます。[審査結果の操作](#environment_magic_number)を参照してください。
  data, status_code, headers = api_instance.create_transaction_with_http_info(payload)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Transaction>
rescue MfkOpenapiRubyClient::ApiError => e
  puts "Error when calling TransactionApi->create_transaction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payload** | [**TransactionPayload**](TransactionPayload.md) |  |  |

### Return type

[**Transaction**](Transaction.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_transaction

> <Transaction> get_transaction(transaction_id)



取引取得

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

api_instance = MfkOpenapiRubyClient::TransactionApi.new
transaction_id = 'transaction_id_example' # String | 対象の取引IDを指定してください。

begin
  
  result = api_instance.get_transaction(transaction_id)
  p result
rescue MfkOpenapiRubyClient::ApiError => e
  puts "Error when calling TransactionApi->get_transaction: #{e}"
end
```

#### Using the get_transaction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Transaction>, Integer, Hash)> get_transaction_with_http_info(transaction_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_transaction_with_http_info(transaction_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Transaction>
rescue MfkOpenapiRubyClient::ApiError => e
  puts "Error when calling TransactionApi->get_transaction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transaction_id** | **String** | 対象の取引IDを指定してください。 |  |

### Return type

[**Transaction**](Transaction.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_transactions_list

> <TransactionsList> get_transactions_list(opts)



取引一覧取得

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

api_instance = MfkOpenapiRubyClient::TransactionApi.new
opts = {
  number: 'number_example', # String | 任意の取引の `number`を指定します。該当する取引がある場合、その一件のみが返却されます。
  customer_id: 'customer_id_example', # String | 任意の顧客IDを指定します。指定した顧客に対する取引が返却されます。
  customer_number: 'customer_number_example', # String | 顧客番号を指定します。指定された顧客の取引を取得します。
  billing_id: 'billing_id_example', # String | 任意の請求IDを指定します。指定した請求に含まれる取引が返却されます。
  status: 'unexamined', # String | 取引のステータスを指定します。未審査(`unexamined`)、審査通過(`passed`)、審査否決(`rejected`)、キャンセル済み(`canceled`)のいずれかを指定してください。
  billing: true, # Boolean | 請求対象であるかどうかを指定します。請求対象(`true`)、請求対象外(`false`)のいずれかを指定してください。 詳しくは[請求対象とは](https://support.mfkessai.co.jp/hc/ja/articles/900002241626)を参照してください。
  date_from: Date.parse('2013-10-20'), # Date | 取引日が指定された日付以降の取引を取得します。指定された日付が取引日のものも含まれます。 RFC3339の`full-time`(2019-04-01)で指定してください。
  date_to: Date.parse('2013-10-20'), # Date | 取引日が指定された日付以前の取引を取得します。指定された日付が取引日のものも含まれます。 RFC3339の`full-time`(2019-04-01`)で指定してください。
  created_at_from: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 指定された日時以降に作成された取引を取得します。指定された日時に作成されたものも含まれます。 RFC3339の`date-time`(2019-04-01T10:36:43%2B09:00)で指定してください。
  created_at_to: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 指定された日時以前に作成された取引を取得します。指定された日時に作成されたものも含まれます。 RFC3339の`date-time`(2019-04-01T10:36:43%2B09:00)で指定してください。
  canceled_at_from: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 指定された日時以降にキャンセルされた取引を取得します。指定された日時にキャンセルされたものも含まれます。 RFC3339の`date-time`(2019-04-01T10:36:43%2B09:00)で指定してください。
  canceled_at_to: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 指定された日時以前にキャンセルされた取引を取得します。指定された日時にキャンセルされたものも含まれます。 RFC3339の`date-time`(2019-04-01T10:36:43%2B09:00)で指定してください。
  accepted_at_from: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 指定された日時以降に債権譲受された取引を取得します。指定された日時に債権譲受されたものも含まれます。 RFC3339の`date-time`(2019-04-01T10:36:43%2B09:00)で指定してください。
  accepted_at_to: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 指定された日時以前に債権譲受された取引を取得します。指定された日時に債権譲受されたものも含まれます。 RFC3339の`date-time`(2019-04-01T10:36:43%2B09:00)で指定してください。
  billing_accepted_at_from: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 指定された日時以降に請求依頼を受領した取引を取得します。指定された日時に請求依頼を受領したものも含まれます。 RFC3339の`date-time`(2019-04-01T10:36:43%2B09:00)で指定してください。
  billing_accepted_at_to: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 指定された日時以前に請求依頼を受領した取引を取得します。指定された日時に請求依頼を受領したものも含まれます。 RFC3339の`date-time`(2019-04-01T10:36:43%2B09:00)で指定してください。
  after: 'after_example', # String | 任意のリソースIDを指定します。追加日時の降順でこのIDのリソースよりも後のリソースを取得します。この時`after`で指定したIDのリソースは結果に含まれません。
  before: 'before_example', # String | 任意のリソースIDを指定します。追加日時の降順でこのIDのリソースよりも前のリソースを取得します。この時`before`で指定したIDのリソースは結果に含まれません。
  limit: 56 # Integer | 取得したいリソースの最大件数を指定します。1~200の間の整数で指定してください。指定がない場合は20になります。
}

begin
  
  result = api_instance.get_transactions_list(opts)
  p result
rescue MfkOpenapiRubyClient::ApiError => e
  puts "Error when calling TransactionApi->get_transactions_list: #{e}"
end
```

#### Using the get_transactions_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TransactionsList>, Integer, Hash)> get_transactions_list_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_transactions_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TransactionsList>
rescue MfkOpenapiRubyClient::ApiError => e
  puts "Error when calling TransactionApi->get_transactions_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **number** | **String** | 任意の取引の &#x60;number&#x60;を指定します。該当する取引がある場合、その一件のみが返却されます。 | [optional] |
| **customer_id** | **String** | 任意の顧客IDを指定します。指定した顧客に対する取引が返却されます。 | [optional] |
| **customer_number** | **String** | 顧客番号を指定します。指定された顧客の取引を取得します。 | [optional] |
| **billing_id** | **String** | 任意の請求IDを指定します。指定した請求に含まれる取引が返却されます。 | [optional] |
| **status** | **String** | 取引のステータスを指定します。未審査(&#x60;unexamined&#x60;)、審査通過(&#x60;passed&#x60;)、審査否決(&#x60;rejected&#x60;)、キャンセル済み(&#x60;canceled&#x60;)のいずれかを指定してください。 | [optional] |
| **billing** | **Boolean** | 請求対象であるかどうかを指定します。請求対象(&#x60;true&#x60;)、請求対象外(&#x60;false&#x60;)のいずれかを指定してください。 詳しくは[請求対象とは](https://support.mfkessai.co.jp/hc/ja/articles/900002241626)を参照してください。 | [optional] |
| **date_from** | **Date** | 取引日が指定された日付以降の取引を取得します。指定された日付が取引日のものも含まれます。 RFC3339の&#x60;full-time&#x60;(2019-04-01)で指定してください。 | [optional] |
| **date_to** | **Date** | 取引日が指定された日付以前の取引を取得します。指定された日付が取引日のものも含まれます。 RFC3339の&#x60;full-time&#x60;(2019-04-01&#x60;)で指定してください。 | [optional] |
| **created_at_from** | **Time** | 指定された日時以降に作成された取引を取得します。指定された日時に作成されたものも含まれます。 RFC3339の&#x60;date-time&#x60;(2019-04-01T10:36:43%2B09:00)で指定してください。 | [optional] |
| **created_at_to** | **Time** | 指定された日時以前に作成された取引を取得します。指定された日時に作成されたものも含まれます。 RFC3339の&#x60;date-time&#x60;(2019-04-01T10:36:43%2B09:00)で指定してください。 | [optional] |
| **canceled_at_from** | **Time** | 指定された日時以降にキャンセルされた取引を取得します。指定された日時にキャンセルされたものも含まれます。 RFC3339の&#x60;date-time&#x60;(2019-04-01T10:36:43%2B09:00)で指定してください。 | [optional] |
| **canceled_at_to** | **Time** | 指定された日時以前にキャンセルされた取引を取得します。指定された日時にキャンセルされたものも含まれます。 RFC3339の&#x60;date-time&#x60;(2019-04-01T10:36:43%2B09:00)で指定してください。 | [optional] |
| **accepted_at_from** | **Time** | 指定された日時以降に債権譲受された取引を取得します。指定された日時に債権譲受されたものも含まれます。 RFC3339の&#x60;date-time&#x60;(2019-04-01T10:36:43%2B09:00)で指定してください。 | [optional] |
| **accepted_at_to** | **Time** | 指定された日時以前に債権譲受された取引を取得します。指定された日時に債権譲受されたものも含まれます。 RFC3339の&#x60;date-time&#x60;(2019-04-01T10:36:43%2B09:00)で指定してください。 | [optional] |
| **billing_accepted_at_from** | **Time** | 指定された日時以降に請求依頼を受領した取引を取得します。指定された日時に請求依頼を受領したものも含まれます。 RFC3339の&#x60;date-time&#x60;(2019-04-01T10:36:43%2B09:00)で指定してください。 | [optional] |
| **billing_accepted_at_to** | **Time** | 指定された日時以前に請求依頼を受領した取引を取得します。指定された日時に請求依頼を受領したものも含まれます。 RFC3339の&#x60;date-time&#x60;(2019-04-01T10:36:43%2B09:00)で指定してください。 | [optional] |
| **after** | **String** | 任意のリソースIDを指定します。追加日時の降順でこのIDのリソースよりも後のリソースを取得します。この時&#x60;after&#x60;で指定したIDのリソースは結果に含まれません。 | [optional] |
| **before** | **String** | 任意のリソースIDを指定します。追加日時の降順でこのIDのリソースよりも前のリソースを取得します。この時&#x60;before&#x60;で指定したIDのリソースは結果に含まれません。 | [optional] |
| **limit** | **Integer** | 取得したいリソースの最大件数を指定します。1~200の間の整数で指定してください。指定がない場合は20になります。 | [optional] |

### Return type

[**TransactionsList**](TransactionsList.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

