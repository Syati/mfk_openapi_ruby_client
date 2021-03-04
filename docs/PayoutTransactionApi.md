# MfkOpenapiRubyClient::PayoutTransactionApi

All URIs are relative to *https://sandbox-api.mfkessai.co.jp/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_payout_transaction**](PayoutTransactionApi.md#get_payout_transaction) | **GET** /payout_transactions/{payout_transaction_id} |  |
| [**get_payout_transactions_list**](PayoutTransactionApi.md#get_payout_transactions_list) | **GET** /payout_transactions |  |


## get_payout_transaction

> <PayoutTransaction> get_payout_transaction(payout_transaction_id)



債権取得

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

api_instance = MfkOpenapiRubyClient::PayoutTransactionApi.new
payout_transaction_id = 'payout_transaction_id_example' # String | 取得したい債権のID。

begin
  
  result = api_instance.get_payout_transaction(payout_transaction_id)
  p result
rescue MfkOpenapiRubyClient::ApiError => e
  puts "Error when calling PayoutTransactionApi->get_payout_transaction: #{e}"
end
```

#### Using the get_payout_transaction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PayoutTransaction>, Integer, Hash)> get_payout_transaction_with_http_info(payout_transaction_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_payout_transaction_with_http_info(payout_transaction_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PayoutTransaction>
rescue MfkOpenapiRubyClient::ApiError => e
  puts "Error when calling PayoutTransactionApi->get_payout_transaction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payout_transaction_id** | **String** | 取得したい債権のID。 |  |

### Return type

[**PayoutTransaction**](PayoutTransaction.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_payout_transactions_list

> <PayoutTransactionsList> get_payout_transactions_list(opts)



債権一覧取得

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

api_instance = MfkOpenapiRubyClient::PayoutTransactionApi.new
opts = {
  payout_id: 'payout_id_example', # String | 任意の振込IDを指定します。指定した振込に含まれる債権が返却されます。
  after: 'after_example', # String | 任意のリソースIDを指定します。追加日時の降順でこのIDのリソースよりも後のリソースを取得します。この時`after`で指定したIDのリソースは結果に含まれません。
  before: 'before_example', # String | 任意のリソースIDを指定します。追加日時の降順でこのIDのリソースよりも前のリソースを取得します。この時`before`で指定したIDのリソースは結果に含まれません。
  limit: 56 # Integer | 取得したいリソースの最大件数を指定します。1~200の間の整数で指定してください。指定がない場合は20になります。
}

begin
  
  result = api_instance.get_payout_transactions_list(opts)
  p result
rescue MfkOpenapiRubyClient::ApiError => e
  puts "Error when calling PayoutTransactionApi->get_payout_transactions_list: #{e}"
end
```

#### Using the get_payout_transactions_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PayoutTransactionsList>, Integer, Hash)> get_payout_transactions_list_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_payout_transactions_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PayoutTransactionsList>
rescue MfkOpenapiRubyClient::ApiError => e
  puts "Error when calling PayoutTransactionApi->get_payout_transactions_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payout_id** | **String** | 任意の振込IDを指定します。指定した振込に含まれる債権が返却されます。 | [optional] |
| **after** | **String** | 任意のリソースIDを指定します。追加日時の降順でこのIDのリソースよりも後のリソースを取得します。この時&#x60;after&#x60;で指定したIDのリソースは結果に含まれません。 | [optional] |
| **before** | **String** | 任意のリソースIDを指定します。追加日時の降順でこのIDのリソースよりも前のリソースを取得します。この時&#x60;before&#x60;で指定したIDのリソースは結果に含まれません。 | [optional] |
| **limit** | **Integer** | 取得したいリソースの最大件数を指定します。1~200の間の整数で指定してください。指定がない場合は20になります。 | [optional] |

### Return type

[**PayoutTransactionsList**](PayoutTransactionsList.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

