# mfk_openapi_ruby_client

see https://developer.mfkessai.co.jp/docs/v2

MfkOpenapiRubyClient - the Ruby gem for the Money Forward Kessai API v2

Money Forward Kessai REST API

This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 2.6.7
- Package version: 1.0.0
- Build package: org.openapitools.codegen.languages.RubyClientCodegen
For more information, please visit [https://support.mfkessai.co.jp/hc/ja](https://support.mfkessai.co.jp/hc/ja)
  
## Client

## regenerate ruby client

### regenerate
```
make generate
```

### spec
```
bundle install
bundle exec rspec or make spec
```

it may be failed because of Open Api Generator has bugs. Fix manually and Commit it

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build mfk_openapi_ruby_client.gemspec
```

Then either install the gem locally:

```shell
gem install ./mfk_openapi_ruby_client-1.0.0.gem
```

(for development, run `gem install --dev ./mfk_openapi_ruby_client-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'mfk_openapi_ruby_client', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'mfk_openapi_ruby_client', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'mfk_openapi_ruby_client'

# Setup authorization
MfkOpenapiRubyClient.configure do |config|
  # Configure API key authorization: apikey

  config.api_key['apikey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apikey'] = 'Bearer'
  
  # if you want to override host, set server_index = nil  
  #  https://github.com/Syati/mfk_openapi_ruby_client/blob/a4197a767fe79303e9c15e2595c13d89f93a023b/lib/mfk_openapi_ruby_client/configuration.rb#L192
  # 
  # config.server_index = nil 
  # config.host = "prod.example.com."
end

api_instance = MfkOpenapiRubyClient::BillingApi.new
billing_id = 'billing_id_example' # String | 対象の請求IDを指定してください。

begin
  result = api_instance.get_billing(billing_id)
  p result
rescue MfkOpenapiRubyClient::ApiError => e
  puts "Exception when calling BillingApi->get_billing: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://sandbox-api.mfkessai.co.jp/v2*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*MfkOpenapiRubyClient::BillingApi* | [**get_billing**](docs/BillingApi.md#get_billing) | **GET** /billings/{billing_id} | 
*MfkOpenapiRubyClient::BillingApi* | [**get_billings_list**](docs/BillingApi.md#get_billings_list) | **GET** /billings | 
*MfkOpenapiRubyClient::CreditFacilityApi* | [**get_credit_facilities_list**](docs/CreditFacilityApi.md#get_credit_facilities_list) | **GET** /credit_facilities | 与信枠の一覧を取得します。顧客IDや取引登録期間開始日・終了日で絞り込んで取得することもできます。
*MfkOpenapiRubyClient::CreditFacilityApi* | [**get_credit_facility**](docs/CreditFacilityApi.md#get_credit_facility) | **GET** /credit_facilities/{credit_facility_id} | 与信枠IDを指定して対象与信枠１件を取得することができます。
*MfkOpenapiRubyClient::CustomerApi* | [**assign_bank_transfer**](docs/CustomerApi.md#assign_bank_transfer) | **POST** /customers/{customer_id}/bank_transfer | 対象顧客１件に振込先口座番号を未割り当ての場合、割り当てます。
*MfkOpenapiRubyClient::CustomerApi* | [**create_customer**](docs/CustomerApi.md#create_customer) | **POST** /customers | 顧客を登録することができます。顧客には必ず一つの請求先が必要であるため同時に請求先一件も登録します。
*MfkOpenapiRubyClient::CustomerApi* | [**get_customer**](docs/CustomerApi.md#get_customer) | **GET** /customers/{customer_id} | 顧客IDを指定して対象顧客１件を取得することができます。
*MfkOpenapiRubyClient::CustomerApi* | [**get_customers_list**](docs/CustomerApi.md#get_customers_list) | **GET** /customers | 顧客の一覧を取得することができます。顧客番号や支払方法、未入金の有無で絞り込んで取得することもできます。
*MfkOpenapiRubyClient::CustomerApi* | [**update_customer**](docs/CustomerApi.md#update_customer) | **PATCH** /customers/{customer_id} | 顧客の情報を更新することができます。
*MfkOpenapiRubyClient::CustomerExaminationApi* | [**create_customer_examination**](docs/CustomerExaminationApi.md#create_customer_examination) | **POST** /customer_examinations | 顧客を指定して与信枠審査を申請することができます。最長で申請後2営業日以内に審査いたします。<br> 自動与信枠審査をご利用の場合、こちらで増枠した金額は今後の与信枠付与に継続して利用されます。また、対象顧客のアラートは解消されます。<br> Sandbox環境では動作テストのため、任意の審査結果を指定することができます。[審査結果の操作](#environment_magic_number)を参照してください。
*MfkOpenapiRubyClient::CustomerExaminationApi* | [**get_customer_examination**](docs/CustomerExaminationApi.md#get_customer_examination) | **GET** /customer_examinations/{customer_examination_id} | 与信枠審査IDを指定して対象与信枠審査１件を取得することができます。
*MfkOpenapiRubyClient::CustomerExaminationApi* | [**get_customer_examinations_list**](docs/CustomerExaminationApi.md#get_customer_examinations_list) | **GET** /customer_examinations | 与信枠審査の一覧を取得します。顧客IDやステータスで絞り込んで取得することもできます。
*MfkOpenapiRubyClient::DestinationApi* | [**create_destination**](docs/DestinationApi.md#create_destination) | **POST** /destinations | 顧客を指定して請求先を登録することができます。 <aside class=\"info\">請求先は更新ができません。更新したい場合は新規登録をしてご利用ください。</aside>
*MfkOpenapiRubyClient::DestinationApi* | [**get_destination**](docs/DestinationApi.md#get_destination) | **GET** /destinations/{destination_id} | 請求先IDを指定して対象請求先１件を取得することができます。
*MfkOpenapiRubyClient::DestinationApi* | [**get_destinations_list**](docs/DestinationApi.md#get_destinations_list) | **GET** /destinations | 請求先の一覧を取得します。顧客IDや顧客番号で特定の顧客に紐づく請求先に絞り込んで取得することもできます。
*MfkOpenapiRubyClient::PayoutApi* | [**get_payout**](docs/PayoutApi.md#get_payout) | **GET** /payouts/{payout_id} | 
*MfkOpenapiRubyClient::PayoutApi* | [**get_payouts_list**](docs/PayoutApi.md#get_payouts_list) | **GET** /payouts | 
*MfkOpenapiRubyClient::PayoutRefundApi* | [**get_payout_refunds_list**](docs/PayoutRefundApi.md#get_payout_refunds_list) | **GET** /payout_refunds | 
*MfkOpenapiRubyClient::PayoutTransactionApi* | [**get_payout_transaction**](docs/PayoutTransactionApi.md#get_payout_transaction) | **GET** /payout_transactions/{payout_transaction_id} | 
*MfkOpenapiRubyClient::PayoutTransactionApi* | [**get_payout_transactions_list**](docs/PayoutTransactionApi.md#get_payout_transactions_list) | **GET** /payout_transactions | 
*MfkOpenapiRubyClient::TransactionApi* | [**cancel_transaction**](docs/TransactionApi.md#cancel_transaction) | **DELETE** /transactions/{transaction_id} | 取引の状態によってはキャンセルができない場合もあります。<a target=\"_blank\" href=\"https://support.mfkessai.co.jp/hc/ja/articles/900002235166-%E5%8F%96%E5%BC%95%E3%81%AE%E3%82%AD%E3%83%A3%E3%83%B3%E3%82%BB%E3%83%AB\">キャンセルについて</a>を参照してください。
*MfkOpenapiRubyClient::TransactionApi* | [**create_transaction**](docs/TransactionApi.md#create_transaction) | **POST** /transactions | 請求先を指定して取引を登録できます。最長で申請後2営業日以内に審査いたします。<br> Sandbox環境では動作テストのため、任意の審査結果を指定することができます。[審査結果の操作](#environment_magic_number)を参照してください。
*MfkOpenapiRubyClient::TransactionApi* | [**get_transaction**](docs/TransactionApi.md#get_transaction) | **GET** /transactions/{transaction_id} | 
*MfkOpenapiRubyClient::TransactionApi* | [**get_transactions_list**](docs/TransactionApi.md#get_transactions_list) | **GET** /transactions | 


## Documentation for Models

 - [MfkOpenapiRubyClient::AccountTransfer](docs/AccountTransfer.md)
 - [MfkOpenapiRubyClient::AmountPerTaxRateType](docs/AmountPerTaxRateType.md)
 - [MfkOpenapiRubyClient::BankTransfer](docs/BankTransfer.md)
 - [MfkOpenapiRubyClient::Billing](docs/Billing.md)
 - [MfkOpenapiRubyClient::BillingCondition](docs/BillingCondition.md)
 - [MfkOpenapiRubyClient::BillingUnpaid](docs/BillingUnpaid.md)
 - [MfkOpenapiRubyClient::BillingsList](docs/BillingsList.md)
 - [MfkOpenapiRubyClient::CreateCustomerResponse](docs/CreateCustomerResponse.md)
 - [MfkOpenapiRubyClient::CreditFacilitiesList](docs/CreditFacilitiesList.md)
 - [MfkOpenapiRubyClient::CreditFacility](docs/CreditFacility.md)
 - [MfkOpenapiRubyClient::Customer](docs/Customer.md)
 - [MfkOpenapiRubyClient::CustomerExamination](docs/CustomerExamination.md)
 - [MfkOpenapiRubyClient::CustomerExaminationPayload](docs/CustomerExaminationPayload.md)
 - [MfkOpenapiRubyClient::CustomerExaminationsList](docs/CustomerExaminationsList.md)
 - [MfkOpenapiRubyClient::CustomerPayload](docs/CustomerPayload.md)
 - [MfkOpenapiRubyClient::CustomerPayloadCustomerExamination](docs/CustomerPayloadCustomerExamination.md)
 - [MfkOpenapiRubyClient::CustomerPayloadDestination](docs/CustomerPayloadDestination.md)
 - [MfkOpenapiRubyClient::CustomerUpdatePayload](docs/CustomerUpdatePayload.md)
 - [MfkOpenapiRubyClient::CustomersList](docs/CustomersList.md)
 - [MfkOpenapiRubyClient::Deduction](docs/Deduction.md)
 - [MfkOpenapiRubyClient::DeductionTax](docs/DeductionTax.md)
 - [MfkOpenapiRubyClient::DeductionTaxFree](docs/DeductionTaxFree.md)
 - [MfkOpenapiRubyClient::DeductionTaxable](docs/DeductionTaxable.md)
 - [MfkOpenapiRubyClient::DeductionTaxableBillingCharge](docs/DeductionTaxableBillingCharge.md)
 - [MfkOpenapiRubyClient::DeductionTaxableConvenienceBilling](docs/DeductionTaxableConvenienceBilling.md)
 - [MfkOpenapiRubyClient::DeductionTaxablePosting](docs/DeductionTaxablePosting.md)
 - [MfkOpenapiRubyClient::DeductionUntaxable](docs/DeductionUntaxable.md)
 - [MfkOpenapiRubyClient::DeductionUntaxableRevenueStamp](docs/DeductionUntaxableRevenueStamp.md)
 - [MfkOpenapiRubyClient::Destination](docs/Destination.md)
 - [MfkOpenapiRubyClient::DestinationPayload](docs/DestinationPayload.md)
 - [MfkOpenapiRubyClient::DestinationsList](docs/DestinationsList.md)
 - [MfkOpenapiRubyClient::Error](docs/Error.md)
 - [MfkOpenapiRubyClient::InvoiceDeliveryMethod](docs/InvoiceDeliveryMethod.md)
 - [MfkOpenapiRubyClient::Pagination](docs/Pagination.md)
 - [MfkOpenapiRubyClient::PaymentMethod](docs/PaymentMethod.md)
 - [MfkOpenapiRubyClient::Payout](docs/Payout.md)
 - [MfkOpenapiRubyClient::PayoutRefund](docs/PayoutRefund.md)
 - [MfkOpenapiRubyClient::PayoutRefundsList](docs/PayoutRefundsList.md)
 - [MfkOpenapiRubyClient::PayoutTransaction](docs/PayoutTransaction.md)
 - [MfkOpenapiRubyClient::PayoutTransactionsList](docs/PayoutTransactionsList.md)
 - [MfkOpenapiRubyClient::PayoutsList](docs/PayoutsList.md)
 - [MfkOpenapiRubyClient::TaxIncludedType](docs/TaxIncludedType.md)
 - [MfkOpenapiRubyClient::TaxRateType](docs/TaxRateType.md)
 - [MfkOpenapiRubyClient::Transaction](docs/Transaction.md)
 - [MfkOpenapiRubyClient::TransactionDetail](docs/TransactionDetail.md)
 - [MfkOpenapiRubyClient::TransactionDetailPayload](docs/TransactionDetailPayload.md)
 - [MfkOpenapiRubyClient::TransactionPayload](docs/TransactionPayload.md)
 - [MfkOpenapiRubyClient::TransactionsList](docs/TransactionsList.md)


## Documentation for Authorization


### apikey


- **Type**: API key
- **API key parameter name**: apikey
- **Location**: HTTP header

