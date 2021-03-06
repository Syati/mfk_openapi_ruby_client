=begin
#Money Forward Kessai API v2

#Money Forward Kessai REST API

The version of the OpenAPI document: 2.6.7
Contact: api.support@mfkessai.co.jp
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.1

=end

require 'date'
require 'time'

module MfkOpenapiRubyClient
  # 取引登録情報です。取引登録で利用します。
  class TransactionPayload
    # 取引の税込合計金額です。各課税種別毎の税込金額(amounts_per_tax_rate_type)の合計である必要があります。また、負の値を指定することはできません。
    attr_accessor :amount

    # 各課税種別毎の税込の合計金額です。各課税種別の取引明細行の小計を合計した値の税込金額になっていなければなりません。
    attr_accessor :amounts_per_tax_rate_type

    attr_accessor :billing_condition

    # 取引日です。売り手様と顧客の間で取引を行った日付を指定してください。
    attr_accessor :date

    # 請求先IDです。取引の請求先を指定してください。
    attr_accessor :destination_id

    # 支払期限です。
    attr_accessor :due_date

    # 請求書送付方法です。郵送(posting) またはメール送付(email)のうちから少なくとも１つを指定してください。どちらも選択された場合、どちらの方法でも送付されます。 また、各取引で指定しなかった送付方法でも、請求にまとまった取引のうちでその送付方法を選択しているものがあれば、そちらの送付方法も採用されます。
    attr_accessor :invoice_delivery_methods

    # 請求書発行日です。請求書が発行される日付を指定します。指定した日付が営業日でない場合は翌営業日になります。また、請求書送付日については[こちら](https://support.mfkessai.co.jp/hc/ja/articles/900002297303-%E8%AB%8B%E6%B1%82%E6%9B%B8%E7%99%BA%E8%A1%8C%E6%97%A5%E3%81%AB%E3%81%A4%E3%81%84%E3%81%A6)を参照ください。
    attr_accessor :issue_date

    # 取引に付与できる任意の取引番号です。Money Forward Kessaiが自動で付与する取引IDとは別で、売り手様が独自に管理する識別子を登録することができます。ただし、売り手様の所有する取引間で一意である必要があります。
    attr_accessor :number

    # 取引明細行です。
    attr_accessor :transaction_details

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'amount' => :'amount',
        :'amounts_per_tax_rate_type' => :'amounts_per_tax_rate_type',
        :'billing_condition' => :'billing_condition',
        :'date' => :'date',
        :'destination_id' => :'destination_id',
        :'due_date' => :'due_date',
        :'invoice_delivery_methods' => :'invoice_delivery_methods',
        :'issue_date' => :'issue_date',
        :'number' => :'number',
        :'transaction_details' => :'transaction_details'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'amount' => :'Integer',
        :'amounts_per_tax_rate_type' => :'Array<AmountPerTaxRateType>',
        :'billing_condition' => :'BillingCondition',
        :'date' => :'Date',
        :'destination_id' => :'String',
        :'due_date' => :'Date',
        :'invoice_delivery_methods' => :'Array<InvoiceDeliveryMethod>',
        :'issue_date' => :'Date',
        :'number' => :'String',
        :'transaction_details' => :'Array<TransactionDetailPayload>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `MfkOpenapiRubyClient::TransactionPayload` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `MfkOpenapiRubyClient::TransactionPayload`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.key?(:'amounts_per_tax_rate_type')
        if (value = attributes[:'amounts_per_tax_rate_type']).is_a?(Array)
          self.amounts_per_tax_rate_type = value
        end
      end

      if attributes.key?(:'billing_condition')
        self.billing_condition = attributes[:'billing_condition']
      end

      if attributes.key?(:'date')
        self.date = attributes[:'date']
      end

      if attributes.key?(:'destination_id')
        self.destination_id = attributes[:'destination_id']
      end

      if attributes.key?(:'due_date')
        self.due_date = attributes[:'due_date']
      end

      if attributes.key?(:'invoice_delivery_methods')
        if (value = attributes[:'invoice_delivery_methods']).is_a?(Array)
          self.invoice_delivery_methods = value
        end
      end

      if attributes.key?(:'issue_date')
        self.issue_date = attributes[:'issue_date']
      end

      if attributes.key?(:'number')
        self.number = attributes[:'number']
      end

      if attributes.key?(:'transaction_details')
        if (value = attributes[:'transaction_details']).is_a?(Array)
          self.transaction_details = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @amount.nil?
        invalid_properties.push('invalid value for "amount", amount cannot be nil.')
      end

      if @amount > 2147483647
        invalid_properties.push('invalid value for "amount", must be smaller than or equal to 2147483647.')
      end

      if @amount < 1
        invalid_properties.push('invalid value for "amount", must be greater than or equal to 1.')
      end

      if @amounts_per_tax_rate_type.nil?
        invalid_properties.push('invalid value for "amounts_per_tax_rate_type", amounts_per_tax_rate_type cannot be nil.')
      end

      if @amounts_per_tax_rate_type.length < 1
        invalid_properties.push('invalid value for "amounts_per_tax_rate_type", number of items must be greater than or equal to 1.')
      end

      if @date.nil?
        invalid_properties.push('invalid value for "date", date cannot be nil.')
      end

      if @destination_id.nil?
        invalid_properties.push('invalid value for "destination_id", destination_id cannot be nil.')
      end

      if @destination_id.to_s.length < 1
        invalid_properties.push('invalid value for "destination_id", the character length must be great than or equal to 1.')
      end

      if @due_date.nil?
        invalid_properties.push('invalid value for "due_date", due_date cannot be nil.')
      end

      if @invoice_delivery_methods.nil?
        invalid_properties.push('invalid value for "invoice_delivery_methods", invoice_delivery_methods cannot be nil.')
      end

      if @invoice_delivery_methods.length > 2
        invalid_properties.push('invalid value for "invoice_delivery_methods", number of items must be less than or equal to 2.')
      end

      if @invoice_delivery_methods.length < 1
        invalid_properties.push('invalid value for "invoice_delivery_methods", number of items must be greater than or equal to 1.')
      end

      if @issue_date.nil?
        invalid_properties.push('invalid value for "issue_date", issue_date cannot be nil.')
      end

      if @number.nil?
        invalid_properties.push('invalid value for "number", number cannot be nil.')
      end

      if @number.to_s.length > 100
        invalid_properties.push('invalid value for "number", the character length must be smaller than or equal to 100.')
      end

      if @number.to_s.length < 1
        invalid_properties.push('invalid value for "number", the character length must be great than or equal to 1.')
      end

      if @transaction_details.nil?
        invalid_properties.push('invalid value for "transaction_details", transaction_details cannot be nil.')
      end

      if @transaction_details.length > 500
        invalid_properties.push('invalid value for "transaction_details", number of items must be less than or equal to 500.')
      end

      if @transaction_details.length < 1
        invalid_properties.push('invalid value for "transaction_details", number of items must be greater than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @amount.nil?
      return false if @amount > 2147483647
      return false if @amount < 1
      return false if @amounts_per_tax_rate_type.nil?
      return false if @amounts_per_tax_rate_type.length < 1
      return false if @date.nil?
      return false if @destination_id.nil?
      return false if @destination_id.to_s.length < 1
      return false if @due_date.nil?
      return false if @invoice_delivery_methods.nil?
      return false if @invoice_delivery_methods.length > 2
      return false if @invoice_delivery_methods.length < 1
      return false if @issue_date.nil?
      return false if @number.nil?
      return false if @number.to_s.length > 100
      return false if @number.to_s.length < 1
      return false if @transaction_details.nil?
      return false if @transaction_details.length > 500
      return false if @transaction_details.length < 1
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] amount Value to be assigned
    def amount=(amount)
      if amount.nil?
        fail ArgumentError, 'amount cannot be nil'
      end

      if amount > 2147483647
        fail ArgumentError, 'invalid value for "amount", must be smaller than or equal to 2147483647.'
      end

      if amount < 1
        fail ArgumentError, 'invalid value for "amount", must be greater than or equal to 1.'
      end

      @amount = amount
    end

    # Custom attribute writer method with validation
    # @param [Object] amounts_per_tax_rate_type Value to be assigned
    def amounts_per_tax_rate_type=(amounts_per_tax_rate_type)
      if amounts_per_tax_rate_type.nil?
        fail ArgumentError, 'amounts_per_tax_rate_type cannot be nil'
      end

      if amounts_per_tax_rate_type.length < 1
        fail ArgumentError, 'invalid value for "amounts_per_tax_rate_type", number of items must be greater than or equal to 1.'
      end

      @amounts_per_tax_rate_type = amounts_per_tax_rate_type
    end

    # Custom attribute writer method with validation
    # @param [Object] destination_id Value to be assigned
    def destination_id=(destination_id)
      if destination_id.nil?
        fail ArgumentError, 'destination_id cannot be nil'
      end

      if destination_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "destination_id", the character length must be great than or equal to 1.'
      end

      @destination_id = destination_id
    end

    # Custom attribute writer method with validation
    # @param [Object] invoice_delivery_methods Value to be assigned
    def invoice_delivery_methods=(invoice_delivery_methods)
      if invoice_delivery_methods.nil?
        fail ArgumentError, 'invoice_delivery_methods cannot be nil'
      end

      if invoice_delivery_methods.length > 2
        fail ArgumentError, 'invalid value for "invoice_delivery_methods", number of items must be less than or equal to 2.'
      end

      if invoice_delivery_methods.length < 1
        fail ArgumentError, 'invalid value for "invoice_delivery_methods", number of items must be greater than or equal to 1.'
      end

      @invoice_delivery_methods = invoice_delivery_methods
    end

    # Custom attribute writer method with validation
    # @param [Object] number Value to be assigned
    def number=(number)
      if number.nil?
        fail ArgumentError, 'number cannot be nil'
      end

      if number.to_s.length > 100
        fail ArgumentError, 'invalid value for "number", the character length must be smaller than or equal to 100.'
      end

      if number.to_s.length < 1
        fail ArgumentError, 'invalid value for "number", the character length must be great than or equal to 1.'
      end

      @number = number
    end

    # Custom attribute writer method with validation
    # @param [Object] transaction_details Value to be assigned
    def transaction_details=(transaction_details)
      if transaction_details.nil?
        fail ArgumentError, 'transaction_details cannot be nil'
      end

      if transaction_details.length > 500
        fail ArgumentError, 'invalid value for "transaction_details", number of items must be less than or equal to 500.'
      end

      if transaction_details.length < 1
        fail ArgumentError, 'invalid value for "transaction_details", number of items must be greater than or equal to 1.'
      end

      @transaction_details = transaction_details
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          amount == o.amount &&
          amounts_per_tax_rate_type == o.amounts_per_tax_rate_type &&
          billing_condition == o.billing_condition &&
          date == o.date &&
          destination_id == o.destination_id &&
          due_date == o.due_date &&
          invoice_delivery_methods == o.invoice_delivery_methods &&
          issue_date == o.issue_date &&
          number == o.number &&
          transaction_details == o.transaction_details
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [amount, amounts_per_tax_rate_type, billing_condition, date, destination_id, due_date, invoice_delivery_methods, issue_date, number, transaction_details].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = MfkOpenapiRubyClient.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
