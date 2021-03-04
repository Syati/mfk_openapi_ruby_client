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

# Unit tests for MfkOpenapiRubyClient::PayoutTransactionApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'PayoutTransactionApi' do
  before do
    # run before each test
    @api_instance = MfkOpenapiRubyClient::PayoutTransactionApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PayoutTransactionApi' do
    it 'should create an instance of PayoutTransactionApi' do
      expect(@api_instance).to be_instance_of(MfkOpenapiRubyClient::PayoutTransactionApi)
    end
  end

  # unit tests for get_payout_transaction
  # 債権取得
  # @param payout_transaction_id 取得したい債権のID。
  # @param [Hash] opts the optional parameters
  # @return [PayoutTransaction]
  describe 'get_payout_transaction test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_payout_transactions_list
  # 債権一覧取得
  # @param [Hash] opts the optional parameters
  # @option opts [String] :payout_id 任意の振込IDを指定します。指定した振込に含まれる債権が返却されます。
  # @option opts [String] :after 任意のリソースIDを指定します。追加日時の降順でこのIDのリソースよりも後のリソースを取得します。この時&#x60;after&#x60;で指定したIDのリソースは結果に含まれません。
  # @option opts [String] :before 任意のリソースIDを指定します。追加日時の降順でこのIDのリソースよりも前のリソースを取得します。この時&#x60;before&#x60;で指定したIDのリソースは結果に含まれません。
  # @option opts [Integer] :limit 取得したいリソースの最大件数を指定します。1~200の間の整数で指定してください。指定がない場合は20になります。
  # @return [PayoutTransactionsList]
  describe 'get_payout_transactions_list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end