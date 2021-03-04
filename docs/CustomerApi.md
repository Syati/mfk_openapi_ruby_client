# MfkOpenapiRubyClient::CustomerApi

All URIs are relative to *https://sandbox-api.mfkessai.co.jp/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**assign_bank_transfer**](CustomerApi.md#assign_bank_transfer) | **POST** /customers/{customer_id}/bank_transfer | 対象顧客１件に振込先口座番号を未割り当ての場合、割り当てます。 |
| [**create_customer**](CustomerApi.md#create_customer) | **POST** /customers | 顧客を登録することができます。顧客には必ず一つの請求先が必要であるため同時に請求先一件も登録します。 |
| [**get_customer**](CustomerApi.md#get_customer) | **GET** /customers/{customer_id} | 顧客IDを指定して対象顧客１件を取得することができます。 |
| [**get_customers_list**](CustomerApi.md#get_customers_list) | **GET** /customers | 顧客の一覧を取得することができます。顧客番号や支払方法、未入金の有無で絞り込んで取得することもできます。 |
| [**update_customer**](CustomerApi.md#update_customer) | **PATCH** /customers/{customer_id} | 顧客の情報を更新することができます。 |


## assign_bank_transfer

> <BankTransfer> assign_bank_transfer(customer_id)

対象顧客１件に振込先口座番号を未割り当ての場合、割り当てます。

振込先口座割り当て

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

api_instance = MfkOpenapiRubyClient::CustomerApi.new
customer_id = 'customer_id_example' # String | 対象の顧客IDを指定してください。

begin
  # 対象顧客１件に振込先口座番号を未割り当ての場合、割り当てます。
  result = api_instance.assign_bank_transfer(customer_id)
  p result
rescue MfkOpenapiRubyClient::ApiError => e
  puts "Error when calling CustomerApi->assign_bank_transfer: #{e}"
end
```

#### Using the assign_bank_transfer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BankTransfer>, Integer, Hash)> assign_bank_transfer_with_http_info(customer_id)

```ruby
begin
  # 対象顧客１件に振込先口座番号を未割り当ての場合、割り当てます。
  data, status_code, headers = api_instance.assign_bank_transfer_with_http_info(customer_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BankTransfer>
rescue MfkOpenapiRubyClient::ApiError => e
  puts "Error when calling CustomerApi->assign_bank_transfer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** | 対象の顧客IDを指定してください。 |  |

### Return type

[**BankTransfer**](BankTransfer.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_customer

> <CreateCustomerResponse> create_customer(payload)

顧客を登録することができます。顧客には必ず一つの請求先が必要であるため同時に請求先一件も登録します。

顧客登録

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

api_instance = MfkOpenapiRubyClient::CustomerApi.new
payload = MfkOpenapiRubyClient::CustomerPayload.new({destination: MfkOpenapiRubyClient::CustomerPayloadDestination.new({address1: '東京都千代田区1-2-3', email: 'kessai.tanto@example.jp', tel: '03-1234-5678', zip_code: '111-1111'}), name: 'サンプル顧客', number: 'CUSTOMER0001'}) # CustomerPayload | 顧客登録情報です。請求先情報も含まれています。

begin
  # 顧客を登録することができます。顧客には必ず一つの請求先が必要であるため同時に請求先一件も登録します。
  result = api_instance.create_customer(payload)
  p result
rescue MfkOpenapiRubyClient::ApiError => e
  puts "Error when calling CustomerApi->create_customer: #{e}"
end
```

#### Using the create_customer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCustomerResponse>, Integer, Hash)> create_customer_with_http_info(payload)

```ruby
begin
  # 顧客を登録することができます。顧客には必ず一つの請求先が必要であるため同時に請求先一件も登録します。
  data, status_code, headers = api_instance.create_customer_with_http_info(payload)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCustomerResponse>
rescue MfkOpenapiRubyClient::ApiError => e
  puts "Error when calling CustomerApi->create_customer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payload** | [**CustomerPayload**](CustomerPayload.md) | 顧客登録情報です。請求先情報も含まれています。 |  |

### Return type

[**CreateCustomerResponse**](CreateCustomerResponse.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_customer

> <Customer> get_customer(customer_id)

顧客IDを指定して対象顧客１件を取得することができます。

顧客取得

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

api_instance = MfkOpenapiRubyClient::CustomerApi.new
customer_id = 'customer_id_example' # String | 対象の顧客IDを指定してください。

begin
  # 顧客IDを指定して対象顧客１件を取得することができます。
  result = api_instance.get_customer(customer_id)
  p result
rescue MfkOpenapiRubyClient::ApiError => e
  puts "Error when calling CustomerApi->get_customer: #{e}"
end
```

#### Using the get_customer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Customer>, Integer, Hash)> get_customer_with_http_info(customer_id)

```ruby
begin
  # 顧客IDを指定して対象顧客１件を取得することができます。
  data, status_code, headers = api_instance.get_customer_with_http_info(customer_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Customer>
rescue MfkOpenapiRubyClient::ApiError => e
  puts "Error when calling CustomerApi->get_customer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** | 対象の顧客IDを指定してください。 |  |

### Return type

[**Customer**](Customer.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_customers_list

> <CustomersList> get_customers_list(opts)

顧客の一覧を取得することができます。顧客番号や支払方法、未入金の有無で絞り込んで取得することもできます。

顧客一覧取得

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

api_instance = MfkOpenapiRubyClient::CustomerApi.new
opts = {
  number: 'number_example', # String | 任意の顧客の `number`を指定します。該当する顧客がいる場合、その一件のみが返却されます。
  payment_method: ['bank_transfer'], # Array<String> | 支払方法を指定します。該当する支払方法の顧客が返却されます。指定できる値は `bank_transfer`(銀行振込), `account_transfer`(口座振替)の２種類のみです。支払方法は複数指定することができます。 複数指定する場合は`?payment_method=bank_transfer&payment_method=account_transfer`のように指定してください。
  has_alert: true, # Boolean | アラートの有無をboolean値で指定します。`true`の場合アラート有り、`false`の場合はアラート無しを表します。
  created_at_from: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 指定された日時以降に作成された顧客を取得します。指定された日時に作成されたものも含まれます。 RFC3339の`date-time`(2019-04-01T10:36:43%2B09:00)で指定してください。
  created_at_to: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 指定された日時以前に作成された顧客を取得します。指定された日時に作成されたものも含まれます。 RFC3339の`date-time`(2019-04-01T10:36:43%2B09:00)で指定してください。
  after: 'after_example', # String | 任意のリソースIDを指定します。追加日時の降順でこのIDのリソースよりも後のリソースを取得します。この時`after`で指定したIDのリソースは結果に含まれません。
  before: 'before_example', # String | 任意のリソースIDを指定します。追加日時の降順でこのIDのリソースよりも前のリソースを取得します。この時`before`で指定したIDのリソースは結果に含まれません。
  limit: 56 # Integer | 取得したいリソースの最大件数を指定します。1~200の間の整数で指定してください。指定がない場合は20になります。
}

begin
  # 顧客の一覧を取得することができます。顧客番号や支払方法、未入金の有無で絞り込んで取得することもできます。
  result = api_instance.get_customers_list(opts)
  p result
rescue MfkOpenapiRubyClient::ApiError => e
  puts "Error when calling CustomerApi->get_customers_list: #{e}"
end
```

#### Using the get_customers_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomersList>, Integer, Hash)> get_customers_list_with_http_info(opts)

```ruby
begin
  # 顧客の一覧を取得することができます。顧客番号や支払方法、未入金の有無で絞り込んで取得することもできます。
  data, status_code, headers = api_instance.get_customers_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomersList>
rescue MfkOpenapiRubyClient::ApiError => e
  puts "Error when calling CustomerApi->get_customers_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **number** | **String** | 任意の顧客の &#x60;number&#x60;を指定します。該当する顧客がいる場合、その一件のみが返却されます。 | [optional] |
| **payment_method** | [**Array&lt;String&gt;**](String.md) | 支払方法を指定します。該当する支払方法の顧客が返却されます。指定できる値は &#x60;bank_transfer&#x60;(銀行振込), &#x60;account_transfer&#x60;(口座振替)の２種類のみです。支払方法は複数指定することができます。 複数指定する場合は&#x60;?payment_method&#x3D;bank_transfer&amp;payment_method&#x3D;account_transfer&#x60;のように指定してください。 | [optional] |
| **has_alert** | **Boolean** | アラートの有無をboolean値で指定します。&#x60;true&#x60;の場合アラート有り、&#x60;false&#x60;の場合はアラート無しを表します。 | [optional] |
| **created_at_from** | **Time** | 指定された日時以降に作成された顧客を取得します。指定された日時に作成されたものも含まれます。 RFC3339の&#x60;date-time&#x60;(2019-04-01T10:36:43%2B09:00)で指定してください。 | [optional] |
| **created_at_to** | **Time** | 指定された日時以前に作成された顧客を取得します。指定された日時に作成されたものも含まれます。 RFC3339の&#x60;date-time&#x60;(2019-04-01T10:36:43%2B09:00)で指定してください。 | [optional] |
| **after** | **String** | 任意のリソースIDを指定します。追加日時の降順でこのIDのリソースよりも後のリソースを取得します。この時&#x60;after&#x60;で指定したIDのリソースは結果に含まれません。 | [optional] |
| **before** | **String** | 任意のリソースIDを指定します。追加日時の降順でこのIDのリソースよりも前のリソースを取得します。この時&#x60;before&#x60;で指定したIDのリソースは結果に含まれません。 | [optional] |
| **limit** | **Integer** | 取得したいリソースの最大件数を指定します。1~200の間の整数で指定してください。指定がない場合は20になります。 | [optional] |

### Return type

[**CustomersList**](CustomersList.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_customer

> <Customer> update_customer(customer_id, payload)

顧客の情報を更新することができます。

顧客更新

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

api_instance = MfkOpenapiRubyClient::CustomerApi.new
customer_id = 'customer_id_example' # String | 対象の顧客IDを指定してください。
payload = MfkOpenapiRubyClient::CustomerUpdatePayload.new # CustomerUpdatePayload | 顧客更新情報です。

begin
  # 顧客の情報を更新することができます。
  result = api_instance.update_customer(customer_id, payload)
  p result
rescue MfkOpenapiRubyClient::ApiError => e
  puts "Error when calling CustomerApi->update_customer: #{e}"
end
```

#### Using the update_customer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Customer>, Integer, Hash)> update_customer_with_http_info(customer_id, payload)

```ruby
begin
  # 顧客の情報を更新することができます。
  data, status_code, headers = api_instance.update_customer_with_http_info(customer_id, payload)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Customer>
rescue MfkOpenapiRubyClient::ApiError => e
  puts "Error when calling CustomerApi->update_customer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** | 対象の顧客IDを指定してください。 |  |
| **payload** | [**CustomerUpdatePayload**](CustomerUpdatePayload.md) | 顧客更新情報です。 |  |

### Return type

[**Customer**](Customer.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

