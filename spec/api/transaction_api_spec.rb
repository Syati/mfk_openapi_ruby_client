=begin
#Money Forward Kessai API v2

#Money Forward Kessai REST API

The version of the OpenAPI document: 2.6.7
Contact: api.support@mfkessai.co.jp
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.1

=end

require 'spec_helper'
require 'json'

# Unit tests for MfkOpenapiRubyClient::TransactionApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'TransactionApi' do
  before do
    # run before each test
    @api_instance = MfkOpenapiRubyClient::TransactionApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TransactionApi' do
    it 'should create an instance of TransactionApi' do
      expect(@api_instance).to be_instance_of(MfkOpenapiRubyClient::TransactionApi)
    end
  end

  # unit tests for cancel_transaction
  # 取引の状態によってはキャンセルができない場合もあります。&lt;a target&#x3D;\&quot;_blank\&quot; href&#x3D;\&quot;https://support.mfkessai.co.jp/hc/ja/articles/900002235166-%E5%8F%96%E5%BC%95%E3%81%AE%E3%82%AD%E3%83%A3%E3%83%B3%E3%82%BB%E3%83%AB\&quot;&gt;キャンセルについて&lt;/a&gt;を参照してください。
  # 取引キャンセル
  # @param transaction_id 対象の取引IDを指定してください。
  # @param [Hash] opts the optional parameters
  # @return [Transaction]
  describe 'cancel_transaction test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_transaction
  # 請求先を指定して取引を登録できます。最長で申請後2営業日以内に審査いたします。&lt;br&gt; Sandbox環境では動作テストのため、任意の審査結果を指定することができます。[審査結果の操作](#environment_magic_number)を参照してください。
  # 取引登録
  # @param payload 
  # @param [Hash] opts the optional parameters
  # @return [Transaction]
  describe 'create_transaction test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_transaction
  # 取引取得
  # @param transaction_id 対象の取引IDを指定してください。
  # @param [Hash] opts the optional parameters
  # @return [Transaction]
  describe 'get_transaction test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_transactions_list
  # 取引一覧取得
  # @param [Hash] opts the optional parameters
  # @option opts [String] :number 任意の取引の &#x60;number&#x60;を指定します。該当する取引がある場合、その一件のみが返却されます。
  # @option opts [String] :customer_id 任意の顧客IDを指定します。指定した顧客に対する取引が返却されます。
  # @option opts [String] :customer_number 顧客番号を指定します。指定された顧客の取引を取得します。
  # @option opts [String] :billing_id 任意の請求IDを指定します。指定した請求に含まれる取引が返却されます。
  # @option opts [String] :status 取引のステータスを指定します。未審査(&#x60;unexamined&#x60;)、審査通過(&#x60;passed&#x60;)、審査否決(&#x60;rejected&#x60;)、キャンセル済み(&#x60;canceled&#x60;)のいずれかを指定してください。
  # @option opts [Boolean] :billing 請求対象であるかどうかを指定します。請求対象(&#x60;true&#x60;)、請求対象外(&#x60;false&#x60;)のいずれかを指定してください。 詳しくは[請求対象とは](https://support.mfkessai.co.jp/hc/ja/articles/900002241626)を参照してください。
  # @option opts [Date] :date_from 取引日が指定された日付以降の取引を取得します。指定された日付が取引日のものも含まれます。 RFC3339の&#x60;full-time&#x60;(2019-04-01)で指定してください。
  # @option opts [Date] :date_to 取引日が指定された日付以前の取引を取得します。指定された日付が取引日のものも含まれます。 RFC3339の&#x60;full-time&#x60;(2019-04-01&#x60;)で指定してください。
  # @option opts [Time] :created_at_from 指定された日時以降に作成された取引を取得します。指定された日時に作成されたものも含まれます。 RFC3339の&#x60;date-time&#x60;(2019-04-01T10:36:43%2B09:00)で指定してください。
  # @option opts [Time] :created_at_to 指定された日時以前に作成された取引を取得します。指定された日時に作成されたものも含まれます。 RFC3339の&#x60;date-time&#x60;(2019-04-01T10:36:43%2B09:00)で指定してください。
  # @option opts [Time] :canceled_at_from 指定された日時以降にキャンセルされた取引を取得します。指定された日時にキャンセルされたものも含まれます。 RFC3339の&#x60;date-time&#x60;(2019-04-01T10:36:43%2B09:00)で指定してください。
  # @option opts [Time] :canceled_at_to 指定された日時以前にキャンセルされた取引を取得します。指定された日時にキャンセルされたものも含まれます。 RFC3339の&#x60;date-time&#x60;(2019-04-01T10:36:43%2B09:00)で指定してください。
  # @option opts [Time] :accepted_at_from 指定された日時以降に債権譲受された取引を取得します。指定された日時に債権譲受されたものも含まれます。 RFC3339の&#x60;date-time&#x60;(2019-04-01T10:36:43%2B09:00)で指定してください。
  # @option opts [Time] :accepted_at_to 指定された日時以前に債権譲受された取引を取得します。指定された日時に債権譲受されたものも含まれます。 RFC3339の&#x60;date-time&#x60;(2019-04-01T10:36:43%2B09:00)で指定してください。
  # @option opts [Time] :billing_accepted_at_from 指定された日時以降に請求依頼を受領した取引を取得します。指定された日時に請求依頼を受領したものも含まれます。 RFC3339の&#x60;date-time&#x60;(2019-04-01T10:36:43%2B09:00)で指定してください。
  # @option opts [Time] :billing_accepted_at_to 指定された日時以前に請求依頼を受領した取引を取得します。指定された日時に請求依頼を受領したものも含まれます。 RFC3339の&#x60;date-time&#x60;(2019-04-01T10:36:43%2B09:00)で指定してください。
  # @option opts [String] :after 任意のリソースIDを指定します。追加日時の降順でこのIDのリソースよりも後のリソースを取得します。この時&#x60;after&#x60;で指定したIDのリソースは結果に含まれません。
  # @option opts [String] :before 任意のリソースIDを指定します。追加日時の降順でこのIDのリソースよりも前のリソースを取得します。この時&#x60;before&#x60;で指定したIDのリソースは結果に含まれません。
  # @option opts [Integer] :limit 取得したいリソースの最大件数を指定します。1~200の間の整数で指定してください。指定がない場合は20になります。
  # @return [TransactionsList]
  describe 'get_transactions_list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
