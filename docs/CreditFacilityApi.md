# MfkOpenapiRubyClient::CreditFacilityApi

All URIs are relative to *https://sandbox-api.mfkessai.co.jp/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_credit_facilities_list**](CreditFacilityApi.md#get_credit_facilities_list) | **GET** /credit_facilities | 与信枠の一覧を取得します。顧客IDや取引登録期間開始日・終了日で絞り込んで取得することもできます。 |
| [**get_credit_facility**](CreditFacilityApi.md#get_credit_facility) | **GET** /credit_facilities/{credit_facility_id} | 与信枠IDを指定して対象与信枠１件を取得することができます。 |


## get_credit_facilities_list

> <CreditFacilitiesList> get_credit_facilities_list(opts)

与信枠の一覧を取得します。顧客IDや取引登録期間開始日・終了日で絞り込んで取得することもできます。

与信枠一覧取得

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

api_instance = MfkOpenapiRubyClient::CreditFacilityApi.new
opts = {
  customer_id: 'customer_id_example', # String | 顧客IDを指定します。指定された顧客の与信枠を取得します。
  customer_number: 'customer_number_example', # String | 顧客番号を指定します。 指定された顧客の与信枠を取得します。
  customer_examination_id: 'customer_examination_id_example', # String | 与信枠審査IDを指定します。指定された与信枠審査によって付与された与信枠を取得します。
  status: ['expired'], # Array<String> | ステータスを指定します。該当するステータスの与信枠が返却されます。指定できる値は `expired`(期限切れ), `active`(適用中), `inactive`(未適用), の３種類のみです。ステータスは複数指定することができます。 複数指定する場合は`?status=expired&status=active`もしくは`?status=expired,active`のように指定してください。
  start_date_from: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 取引登録期間開始日が指定された日時よりも後の与信枠を取得します。指定された日時のものも含まれます。
  start_date_to: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 取引登録期間開始日が指定された日時よりも前の与信枠を取得します。指定された日時のものも含まれます。
  end_date_from: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 取引登録期間終了日が指定された日時よりも後の与信枠を取得します。指定された日時のものも含まれます。
  end_date_to: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 取引登録期間終了日が指定された日時よりも前の与信枠を取得します。指定された日時のものも含まれます。
  after: 'after_example', # String | 任意のリソースIDを指定します。追加日時の降順でこのIDのリソースよりも後のリソースを取得します。この時`after`で指定したIDのリソースは結果に含まれません。
  before: 'before_example', # String | 任意のリソースIDを指定します。追加日時の降順でこのIDのリソースよりも前のリソースを取得します。この時`before`で指定したIDのリソースは結果に含まれません。
  limit: 56 # Integer | 取得したいリソースの最大件数を指定します。1~200の間の整数で指定してください。指定がない場合は20になります。
}

begin
  # 与信枠の一覧を取得します。顧客IDや取引登録期間開始日・終了日で絞り込んで取得することもできます。
  result = api_instance.get_credit_facilities_list(opts)
  p result
rescue MfkOpenapiRubyClient::ApiError => e
  puts "Error when calling CreditFacilityApi->get_credit_facilities_list: #{e}"
end
```

#### Using the get_credit_facilities_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreditFacilitiesList>, Integer, Hash)> get_credit_facilities_list_with_http_info(opts)

```ruby
begin
  # 与信枠の一覧を取得します。顧客IDや取引登録期間開始日・終了日で絞り込んで取得することもできます。
  data, status_code, headers = api_instance.get_credit_facilities_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreditFacilitiesList>
rescue MfkOpenapiRubyClient::ApiError => e
  puts "Error when calling CreditFacilityApi->get_credit_facilities_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** | 顧客IDを指定します。指定された顧客の与信枠を取得します。 | [optional] |
| **customer_number** | **String** | 顧客番号を指定します。 指定された顧客の与信枠を取得します。 | [optional] |
| **customer_examination_id** | **String** | 与信枠審査IDを指定します。指定された与信枠審査によって付与された与信枠を取得します。 | [optional] |
| **status** | [**Array&lt;String&gt;**](String.md) | ステータスを指定します。該当するステータスの与信枠が返却されます。指定できる値は &#x60;expired&#x60;(期限切れ), &#x60;active&#x60;(適用中), &#x60;inactive&#x60;(未適用), の３種類のみです。ステータスは複数指定することができます。 複数指定する場合は&#x60;?status&#x3D;expired&amp;status&#x3D;active&#x60;もしくは&#x60;?status&#x3D;expired,active&#x60;のように指定してください。 | [optional] |
| **start_date_from** | **Time** | 取引登録期間開始日が指定された日時よりも後の与信枠を取得します。指定された日時のものも含まれます。 | [optional] |
| **start_date_to** | **Time** | 取引登録期間開始日が指定された日時よりも前の与信枠を取得します。指定された日時のものも含まれます。 | [optional] |
| **end_date_from** | **Time** | 取引登録期間終了日が指定された日時よりも後の与信枠を取得します。指定された日時のものも含まれます。 | [optional] |
| **end_date_to** | **Time** | 取引登録期間終了日が指定された日時よりも前の与信枠を取得します。指定された日時のものも含まれます。 | [optional] |
| **after** | **String** | 任意のリソースIDを指定します。追加日時の降順でこのIDのリソースよりも後のリソースを取得します。この時&#x60;after&#x60;で指定したIDのリソースは結果に含まれません。 | [optional] |
| **before** | **String** | 任意のリソースIDを指定します。追加日時の降順でこのIDのリソースよりも前のリソースを取得します。この時&#x60;before&#x60;で指定したIDのリソースは結果に含まれません。 | [optional] |
| **limit** | **Integer** | 取得したいリソースの最大件数を指定します。1~200の間の整数で指定してください。指定がない場合は20になります。 | [optional] |

### Return type

[**CreditFacilitiesList**](CreditFacilitiesList.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_credit_facility

> <CreditFacility> get_credit_facility(credit_facility_id)

与信枠IDを指定して対象与信枠１件を取得することができます。

与信枠取得

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

api_instance = MfkOpenapiRubyClient::CreditFacilityApi.new
credit_facility_id = 'credit_facility_id_example' # String | 対象の与信枠IDを指定してください。

begin
  # 与信枠IDを指定して対象与信枠１件を取得することができます。
  result = api_instance.get_credit_facility(credit_facility_id)
  p result
rescue MfkOpenapiRubyClient::ApiError => e
  puts "Error when calling CreditFacilityApi->get_credit_facility: #{e}"
end
```

#### Using the get_credit_facility_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreditFacility>, Integer, Hash)> get_credit_facility_with_http_info(credit_facility_id)

```ruby
begin
  # 与信枠IDを指定して対象与信枠１件を取得することができます。
  data, status_code, headers = api_instance.get_credit_facility_with_http_info(credit_facility_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreditFacility>
rescue MfkOpenapiRubyClient::ApiError => e
  puts "Error when calling CreditFacilityApi->get_credit_facility_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **credit_facility_id** | **String** | 対象の与信枠IDを指定してください。 |  |

### Return type

[**CreditFacility**](CreditFacility.md)

### Authorization

[apikey](../README.md#apikey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

