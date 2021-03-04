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
require 'date'

# Unit tests for MfkOpenapiRubyClient::Error
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe MfkOpenapiRubyClient::Error do
  let(:instance) { MfkOpenapiRubyClient::Error.new }

  describe 'test an instance of Error' do
    it 'should create an instance of Error' do
      expect(instance).to be_instance_of(MfkOpenapiRubyClient::Error)
    end
  end
  describe 'test attribute "code"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["unavailable_seller", "not_found", "request_canceled", "already_exists", "seller_setting_required", "invalid_json_format", "invalid_after", "invalid_before", "invalid_limit", "out_of_range_by_after", "out_of_range_by_before", "invalid_amount_per_tax_rate_type_amount", "invalid_amount_per_tax_rate_type_tax_rate_type", "invalid_created_at_from", "invalid_created_at_to", "invalid_canceled_at_from", "invalid_canceled_at_to", "invalid_accepted_at_from", "invalid_accepted_at_to", "invalid_billing_accepted_at_from", "invalid_billing_accepted_at_to", "invalid_customer_destination", "invalid_customer_has_alert", "invalid_customer_id", "invalid_customer_name", "invalid_customer_number", "invalid_customer_payment_method", "invalid_destination_address1", "invalid_destination_address2", "invalid_destination_cc_emails", "invalid_destination_department", "invalid_destination_email", "invalid_destination_id", "invalid_destination_name", "invalid_destination_name_kana", "invalid_destination_tel", "invalid_destination_title", "invalid_destination_zip_code", "invalid_customer_examination_id", "invalid_customer_examination_address1", "invalid_customer_examination_address2", "invalid_customer_examination_amount", "invalid_customer_examination_amount_with_balance", "invalid_customer_examination_business_description", "invalid_customer_examination_business_type", "invalid_customer_examination_corporate_number", "invalid_customer_examination_email", "invalid_customer_examination_end_date", "invalid_customer_examination_remark", "invalid_customer_examination_representative_name", "invalid_customer_examination_status", "invalid_customer_examination_tel", "invalid_customer_examination_website", "invalid_customer_examination_zip_code", "invalid_credit_facility_end_date_from", "invalid_credit_facility_end_date_to", "invalid_credit_facility_id", "invalid_credit_facility_start_date_from", "invalid_credit_facility_start_date_to", "invalid_credit_facility_status", "invalid_transaction_amount", "invalid_transaction_amounts_per_tax_rate_type", "invalid_transaction_billing", "invalid_transaction_billing_condition", "invalid_transaction_details", "invalid_transaction_detail_amount", "invalid_transaction_detail_description", "invalid_transaction_detail_quantity", "invalid_transaction_detail_tax_included_type", "invalid_transaction_detail_tax_rate_type", "invalid_transaction_detail_unit_price", "invalid_transaction_date", "invalid_transaction_date_from", "invalid_transaction_date_to", "invalid_transaction_due_date", "invalid_transaction_duplicate_invoice_delivery_method", "invalid_transaction_invoice_delivery_methods", "invalid_transaction_issue_date", "invalid_transaction_id", "invalid_transaction_number", "invalid_transaction_status", "not_cancelable_transaction_status", "invalid_billing_due_date_from", "invalid_billing_due_date_to", "invalid_billing_id", "invalid_billing_issue_date_from", "invalid_billing_issue_date_to", "invalid_billing_status", "invalid_billing_unpaid", "invalid_payout_date_from", "invalid_payout_date_to", "invalid_payout_id", "invalid_payout_status", "invalid_payout_transaction_id"])
      # validator.allowable_values.each do |value|
      #   expect { instance.code = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "message"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "param"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["already_exisits_error", "conflict_operation_error", "invalid_argument_error", "not_found_error", "rate_limit_error", "request_canceled", "unavailable_seller", "seller_setting_required"])
      # validator.allowable_values.each do |value|
      #   expect { instance.type = value }.not_to raise_error
      # end
    end
  end

end