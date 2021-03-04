# MfkOpenapiRubyClient::PayoutRefundApi

All URIs are relative to *https://sandbox-api.mfkessai.co.jp/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_payout_refunds_list**](PayoutRefundApi.md#get_payout_refunds_list) | **GET** /payout_refunds |  |


## get_payout_refunds_list

> <PayoutRefundsList> get_payout_refunds_list(opts)



返金一覧取得

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

api_instance = MfkOpenapiRubyClient::PayoutRefundApi.new
opts = {
  payout_id: 'payout_id_example', # String | 任意の振込IDを指定します。指定した振込に含まれる返金が返却されます。
  after: 'after_example', # String | 任意のリソースIDを指定します。追加日時の降順でこのIDのリソースよりも後のリソースを取得します。この時`after`で指定したIDのリソースは結果に含まれません。
  before: 'before_example', # String | 任意のリソースIDを指定します。追加日時の降順でこのIDのリソースよりも前のリソースを取得します。この時`before`で指定したIDのリソースは結果に含まれません。
  limit: 56 # Integer | 取得したいリソースの最大件数を指定します。1~200の間の整数で指定してください。指定がない場合は20になります。
}

begin
  
  result = api_instance.get_payout_refunds_list(opts)
  p result
rescue MfkOpenapiRubyClient::ApiError => e
  puts "Error when calling PayoutRefundApi->get_payout_refunds_list: #{e}"
end
```

#### Using the get_payout_refunds_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PayoutRefundsList>, Integer, Hash)> get_payout_refunds_list_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_payout_refunds_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PayoutRefundsList>
rescue MfkOpenapiRubyClient::ApiError => e
  puts "Error when calling PayoutRefundApi->get_payout_refunds_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payout_id** | **String** | 任意の振込IDを指定します。指定した振込に含まれる返金が返却されます。 | [optional] |
| **after** | **String** | 任意のリソースIDを指定します。追加日時の降順でこのIDのリソースよりも後のリソースを取得します。この時&#x60;after&#x60;で指定したIDのリソースは結果に含まれません。 | [optional] |
| **before** | **String** | 任意のリソースIDを指定します。追加日時の降順でこのIDのリソースよりも前のリソースを取得します。この時&#x60;before&#x60;で指定したIDのリソースは結果に含まれません。 | [optional] |
| **limit** | **Integer** | 取得したいリソースの最大件数を指定します。1~200の間の整数で指定してください。指定がない場合は20になります。 | [optional] |

### Return type

[**PayoutRefundsList**](PayoutRefundsList.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

