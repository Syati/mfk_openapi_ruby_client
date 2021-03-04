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

# Unit tests for MfkOpenapiRubyClient::PaymentMethod
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe MfkOpenapiRubyClient::PaymentMethod do
  let(:instance) { MfkOpenapiRubyClient::PaymentMethod.new }

  describe 'test an instance of PaymentMethod' do
    it 'should create an instance of PaymentMethod' do
      expect(instance).to be_instance_of(MfkOpenapiRubyClient::PaymentMethod)
    end
  end
  describe 'test attribute "account_transfer"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "bank_transfer"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "object"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["payment_method"])
      # validator.allowable_values.each do |value|
      #   expect { instance.object = value }.not_to raise_error
      # end
    end
  end

end
