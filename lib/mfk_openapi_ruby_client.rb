=begin
#Money Forward Kessai API v2

#Money Forward Kessai REST API

The version of the OpenAPI document: 2.6.7
Contact: api.support@mfkessai.co.jp
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.1

=end

# Common files
require 'mfk_openapi_ruby_client/api_client'
require 'mfk_openapi_ruby_client/api_error'
require 'mfk_openapi_ruby_client/version'
require 'mfk_openapi_ruby_client/configuration'

# Models
require 'mfk_openapi_ruby_client/models/account_transfer'
require 'mfk_openapi_ruby_client/models/amount_per_tax_rate_type'
require 'mfk_openapi_ruby_client/models/bank_transfer'
require 'mfk_openapi_ruby_client/models/billing'
require 'mfk_openapi_ruby_client/models/billing_condition'
require 'mfk_openapi_ruby_client/models/billing_unpaid'
require 'mfk_openapi_ruby_client/models/billings_list'
require 'mfk_openapi_ruby_client/models/create_customer_response'
require 'mfk_openapi_ruby_client/models/credit_facilities_list'
require 'mfk_openapi_ruby_client/models/credit_facility'
require 'mfk_openapi_ruby_client/models/customer'
require 'mfk_openapi_ruby_client/models/customer_examination'
require 'mfk_openapi_ruby_client/models/customer_examination_payload'
require 'mfk_openapi_ruby_client/models/customer_examinations_list'
require 'mfk_openapi_ruby_client/models/customer_payload'
require 'mfk_openapi_ruby_client/models/customer_payload_customer_examination'
require 'mfk_openapi_ruby_client/models/customer_payload_destination'
require 'mfk_openapi_ruby_client/models/customer_update_payload'
require 'mfk_openapi_ruby_client/models/customers_list'
require 'mfk_openapi_ruby_client/models/deduction'
require 'mfk_openapi_ruby_client/models/deduction_tax'
require 'mfk_openapi_ruby_client/models/deduction_tax_free'
require 'mfk_openapi_ruby_client/models/deduction_taxable'
require 'mfk_openapi_ruby_client/models/deduction_taxable_billing_charge'
require 'mfk_openapi_ruby_client/models/deduction_taxable_convenience_billing'
require 'mfk_openapi_ruby_client/models/deduction_taxable_posting'
require 'mfk_openapi_ruby_client/models/deduction_untaxable'
require 'mfk_openapi_ruby_client/models/deduction_untaxable_revenue_stamp'
require 'mfk_openapi_ruby_client/models/destination'
require 'mfk_openapi_ruby_client/models/destination_payload'
require 'mfk_openapi_ruby_client/models/destinations_list'
require 'mfk_openapi_ruby_client/models/error'
require 'mfk_openapi_ruby_client/models/invoice_delivery_method'
require 'mfk_openapi_ruby_client/models/pagination'
require 'mfk_openapi_ruby_client/models/payment_method'
require 'mfk_openapi_ruby_client/models/payout'
require 'mfk_openapi_ruby_client/models/payout_refund'
require 'mfk_openapi_ruby_client/models/payout_refunds_list'
require 'mfk_openapi_ruby_client/models/payout_transaction'
require 'mfk_openapi_ruby_client/models/payout_transactions_list'
require 'mfk_openapi_ruby_client/models/payouts_list'
require 'mfk_openapi_ruby_client/models/tax_included_type'
require 'mfk_openapi_ruby_client/models/tax_rate_type'
require 'mfk_openapi_ruby_client/models/transaction'
require 'mfk_openapi_ruby_client/models/transaction_detail'
require 'mfk_openapi_ruby_client/models/transaction_detail_payload'
require 'mfk_openapi_ruby_client/models/transaction_payload'
require 'mfk_openapi_ruby_client/models/transactions_list'

# APIs
require 'mfk_openapi_ruby_client/api/billing_api'
require 'mfk_openapi_ruby_client/api/credit_facility_api'
require 'mfk_openapi_ruby_client/api/customer_api'
require 'mfk_openapi_ruby_client/api/customer_examination_api'
require 'mfk_openapi_ruby_client/api/destination_api'
require 'mfk_openapi_ruby_client/api/payout_api'
require 'mfk_openapi_ruby_client/api/payout_refund_api'
require 'mfk_openapi_ruby_client/api/payout_transaction_api'
require 'mfk_openapi_ruby_client/api/transaction_api'

module MfkOpenapiRubyClient
  class << self
    # Customize default settings for the SDK using block.
    #   MfkOpenapiRubyClient.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
