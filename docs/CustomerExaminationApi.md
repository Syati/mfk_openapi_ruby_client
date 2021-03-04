# MfkOpenapiRubyClient::CustomerExaminationApi

All URIs are relative to *https://sandbox-api.mfkessai.co.jp/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_customer_examination**](CustomerExaminationApi.md#create_customer_examination) | **POST** /customer_examinations | 顧客を指定して与信枠審査を申請することができます。最長で申請後2営業日以内に審査いたします。&lt;br&gt; 自動与信枠審査をご利用の場合、こちらで増枠した金額は今後の与信枠付与に継続して利用されます。また、対象顧客のアラートは解消されます。&lt;br&gt; Sandbox環境では動作テストのため、任意の審査結果を指定することができます。[審査結果の操作](#environment_magic_number)を参照してください。 |
| [**get_customer_examination**](CustomerExaminationApi.md#get_customer_examination) | **GET** /customer_examinations/{customer_examination_id} | 与信枠審査IDを指定して対象与信枠審査１件を取得することができます。 |
| [**get_customer_examinations_list**](CustomerExaminationApi.md#get_customer_examinations_list) | **GET** /customer_examinations | 与信枠審査の一覧を取得します。顧客IDやステータスで絞り込んで取得することもできます。 |


## create_customer_examination

> <CustomerExamination> create_customer_examination(payload)

顧客を指定して与信枠審査を申請することができます。最長で申請後2営業日以内に審査いたします。<br> 自動与信枠審査をご利用の場合、こちらで増枠した金額は今後の与信枠付与に継続して利用されます。また、対象顧客のアラートは解消されます。<br> Sandbox環境では動作テストのため、任意の審査結果を指定することができます。[審査結果の操作](#environment_magic_number)を参照してください。

与信枠審査申請

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

api_instance = MfkOpenapiRubyClient::CustomerExaminationApi.new
payload = MfkOpenapiRubyClient::CustomerExaminationPayload.new({address1: '東京都千代田区1-2-3', amount: 200000, customer_id: '7679-YW36', email: 'kessai.tanto@example.jp', end_date: Date.parse('Tue Apr 30 00:00:00 GMT 2019'), tel: '03-1234-5678', zip_code: '111-1111'}) # CustomerExaminationPayload | 与信枠審査申請情報です。

begin
  # 顧客を指定して与信枠審査を申請することができます。最長で申請後2営業日以内に審査いたします。<br> 自動与信枠審査をご利用の場合、こちらで増枠した金額は今後の与信枠付与に継続して利用されます。また、対象顧客のアラートは解消されます。<br> Sandbox環境では動作テストのため、任意の審査結果を指定することができます。[審査結果の操作](#environment_magic_number)を参照してください。
  result = api_instance.create_customer_examination(payload)
  p result
rescue MfkOpenapiRubyClient::ApiError => e
  puts "Error when calling CustomerExaminationApi->create_customer_examination: #{e}"
end
```

#### Using the create_customer_examination_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomerExamination>, Integer, Hash)> create_customer_examination_with_http_info(payload)

```ruby
begin
  # 顧客を指定して与信枠審査を申請することができます。最長で申請後2営業日以内に審査いたします。<br> 自動与信枠審査をご利用の場合、こちらで増枠した金額は今後の与信枠付与に継続して利用されます。また、対象顧客のアラートは解消されます。<br> Sandbox環境では動作テストのため、任意の審査結果を指定することができます。[審査結果の操作](#environment_magic_number)を参照してください。
  data, status_code, headers = api_instance.create_customer_examination_with_http_info(payload)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomerExamination>
rescue MfkOpenapiRubyClient::ApiError => e
  puts "Error when calling CustomerExaminationApi->create_customer_examination_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payload** | [**CustomerExaminationPayload**](CustomerExaminationPayload.md) | 与信枠審査申請情報です。 |  |

### Return type

[**CustomerExamination**](CustomerExamination.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_customer_examination

> <CustomerExamination> get_customer_examination(customer_examination_id)

与信枠審査IDを指定して対象与信枠審査１件を取得することができます。

与信枠審査取得

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

api_instance = MfkOpenapiRubyClient::CustomerExaminationApi.new
customer_examination_id = 'customer_examination_id_example' # String | 対象の与信枠審査IDを指定してください。

begin
  # 与信枠審査IDを指定して対象与信枠審査１件を取得することができます。
  result = api_instance.get_customer_examination(customer_examination_id)
  p result
rescue MfkOpenapiRubyClient::ApiError => e
  puts "Error when calling CustomerExaminationApi->get_customer_examination: #{e}"
end
```

#### Using the get_customer_examination_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomerExamination>, Integer, Hash)> get_customer_examination_with_http_info(customer_examination_id)

```ruby
begin
  # 与信枠審査IDを指定して対象与信枠審査１件を取得することができます。
  data, status_code, headers = api_instance.get_customer_examination_with_http_info(customer_examination_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomerExamination>
rescue MfkOpenapiRubyClient::ApiError => e
  puts "Error when calling CustomerExaminationApi->get_customer_examination_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_examination_id** | **String** | 対象の与信枠審査IDを指定してください。 |  |

### Return type

[**CustomerExamination**](CustomerExamination.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_customer_examinations_list

> <CustomerExaminationsList> get_customer_examinations_list(opts)

与信枠審査の一覧を取得します。顧客IDやステータスで絞り込んで取得することもできます。

与信枠審査一覧取得

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

api_instance = MfkOpenapiRubyClient::CustomerExaminationApi.new
opts = {
  customer_id: 'customer_id_example', # String | 顧客IDを指定します。指定された顧客に対する与信枠審査を取得します。
  customer_number: 'customer_number_example', # String | 顧客番号を指定します。
  status: 'passed', # String | 与信枠審査のステータスを指定します。未審査(`unexamined`)、審査通過(`passed`)、審査否決(`rejected`)のいずれかを指定してください。
  created_at_from: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 指定された日時以降に作成された与信枠審査を取得します。指定された日時に作成されたものも含まれます。 RFC3339の`date-time`(2019-04-01T10:36:43%2B09:00)で指定してください。
  created_at_to: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 指定された日時以前に作成された与信枠審査を取得します。指定された日時に作成されたものも含まれます。 RFC3339の`date-time`(2019-04-01T10:36:43%2B09:00)で指定してください。
  after: 'after_example', # String | 任意のリソースIDを指定します。追加日時の降順でこのIDのリソースよりも後のリソースを取得します。この時`after`で指定したIDのリソースは結果に含まれません。
  before: 'before_example', # String | 任意のリソースIDを指定します。追加日時の降順でこのIDのリソースよりも前のリソースを取得します。この時`before`で指定したIDのリソースは結果に含まれません。
  limit: 56 # Integer | 取得したいリソースの最大件数を指定します。1~200の間の整数で指定してください。指定がない場合は20になります。
}

begin
  # 与信枠審査の一覧を取得します。顧客IDやステータスで絞り込んで取得することもできます。
  result = api_instance.get_customer_examinations_list(opts)
  p result
rescue MfkOpenapiRubyClient::ApiError => e
  puts "Error when calling CustomerExaminationApi->get_customer_examinations_list: #{e}"
end
```

#### Using the get_customer_examinations_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomerExaminationsList>, Integer, Hash)> get_customer_examinations_list_with_http_info(opts)

```ruby
begin
  # 与信枠審査の一覧を取得します。顧客IDやステータスで絞り込んで取得することもできます。
  data, status_code, headers = api_instance.get_customer_examinations_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomerExaminationsList>
rescue MfkOpenapiRubyClient::ApiError => e
  puts "Error when calling CustomerExaminationApi->get_customer_examinations_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** | 顧客IDを指定します。指定された顧客に対する与信枠審査を取得します。 | [optional] |
| **customer_number** | **String** | 顧客番号を指定します。 | [optional] |
| **status** | **String** | 与信枠審査のステータスを指定します。未審査(&#x60;unexamined&#x60;)、審査通過(&#x60;passed&#x60;)、審査否決(&#x60;rejected&#x60;)のいずれかを指定してください。 | [optional] |
| **created_at_from** | **Time** | 指定された日時以降に作成された与信枠審査を取得します。指定された日時に作成されたものも含まれます。 RFC3339の&#x60;date-time&#x60;(2019-04-01T10:36:43%2B09:00)で指定してください。 | [optional] |
| **created_at_to** | **Time** | 指定された日時以前に作成された与信枠審査を取得します。指定された日時に作成されたものも含まれます。 RFC3339の&#x60;date-time&#x60;(2019-04-01T10:36:43%2B09:00)で指定してください。 | [optional] |
| **after** | **String** | 任意のリソースIDを指定します。追加日時の降順でこのIDのリソースよりも後のリソースを取得します。この時&#x60;after&#x60;で指定したIDのリソースは結果に含まれません。 | [optional] |
| **before** | **String** | 任意のリソースIDを指定します。追加日時の降順でこのIDのリソースよりも前のリソースを取得します。この時&#x60;before&#x60;で指定したIDのリソースは結果に含まれません。 | [optional] |
| **limit** | **Integer** | 取得したいリソースの最大件数を指定します。1~200の間の整数で指定してください。指定がない場合は20になります。 | [optional] |

### Return type

[**CustomerExaminationsList**](CustomerExaminationsList.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

