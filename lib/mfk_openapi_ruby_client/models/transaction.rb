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
  # 取引です。
  class Transaction
    # 債権譲受日時です。
    attr_accessor :accepted_at

    # 取引の合計金額です。**税込**金額になります。
    attr_accessor :amount

    # 各税率種別毎の**税込**の合計金額です。各税率種別の取引明細行の小計を合計した値の税込金額になっています。
    attr_accessor :amounts_per_tax_rate_type

    # 請求対象であるかをboolean値で表します。`true`の場合請求対象で、`false`の場合は請求対象ではないことを表します。
    attr_accessor :billing

    # 請求依頼受領日時です。請求対象になった日時を表します。請求対象でない場合は空になります。
    attr_accessor :billing_accepted_at

    attr_accessor :billing_condition

    # 請求IDです。請求書にまとめられる単位のIDです。同じ請求IDを持つ取引とまとめられて請求書に記載されます。
    attr_accessor :billing_id

    # 取引がキャンセルされた日時です。未キャンセルの場合は空になります。
    attr_accessor :canceled_at

    # 取引が登録された日時です。
    attr_accessor :created_at

    # 顧客IDです。
    attr_accessor :customer_id

    # 請求先IDです。取引の請求先を示します。
    attr_accessor :destination_id

    # 取引日です。売り手様と顧客様の間で取引を行った日付です。
    attr_accessor :date

    # 支払期限です。この日付を超えてMoney Forward Kessaiへの入金が確認できない場合は未入金になります。
    attr_accessor :due_date

    # 取引IDです。一意の識別子として自動で付与されます。
    attr_accessor :id

    # 請求書送付方法です。郵送(posting) またはメール送付(email)のうちから少なくとも１つになります。どちらも選択された場合、どちらの方法でも送付されます。 また、各取引で指定しなかった送付方法でも、請求にまとまった取引のうちでその送付方法を選択しているものがあれば、そちらの送付方法も採用されます。
    attr_accessor :invoice_delivery_methods

    # 請求書発行日です。請求書発送日については<a href=\"https://support.mfkessai.co.jp/hc/ja/articles/900002297303-%E8%AB%8B%E6%B1%82%E6%9B%B8%E7%99%BA%E8%A1%8C%E6%97%A5%E3%81%AB%E3%81%A4%E3%81%84%E3%81%A6\" target=\"_blank\">請求書発行日について</a>を参照ください。
    attr_accessor :issue_date

    # 取引に付与できる任意の取引番号です。Money Forward Kessaiが自動で付与する取引IDとは別で、売り手様が独自に管理する識別子を登録することができます。ただし、売り手様の所有する取引間で一意である必要があります。
    attr_accessor :number

    # このObjectの種別を示します。ここでは必ず`transaction`が入ります。
    attr_accessor :object

    # 取引ステータスです。審査中(`unexamined`)、審査通過(`passed`)、審査否決(`rejected`)、キャンセル済(`canceled`)があります。
    attr_accessor :status

    # 取引明細行です。
    attr_accessor :transaction_details

    # 取引URIです。すべてのリソースで一意の識別子として自動で付与されます。
    attr_accessor :uri

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'accepted_at' => :'accepted_at',
        :'amount' => :'amount',
        :'amounts_per_tax_rate_type' => :'amounts_per_tax_rate_type',
        :'billing' => :'billing',
        :'billing_accepted_at' => :'billing_accepted_at',
        :'billing_condition' => :'billing_condition',
        :'billing_id' => :'billing_id',
        :'canceled_at' => :'canceled_at',
        :'created_at' => :'created_at',
        :'customer_id' => :'customer_id',
        :'destination_id' => :'destination_id',
        :'date' => :'date',
        :'due_date' => :'due_date',
        :'id' => :'id',
        :'invoice_delivery_methods' => :'invoice_delivery_methods',
        :'issue_date' => :'issue_date',
        :'number' => :'number',
        :'object' => :'object',
        :'status' => :'status',
        :'transaction_details' => :'transaction_details',
        :'uri' => :'uri'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'accepted_at' => :'Time',
        :'amount' => :'Integer',
        :'amounts_per_tax_rate_type' => :'Array<AmountPerTaxRateType>',
        :'billing' => :'Boolean',
        :'billing_accepted_at' => :'Time',
        :'billing_condition' => :'BillingCondition',
        :'billing_id' => :'String',
        :'canceled_at' => :'Time',
        :'created_at' => :'Time',
        :'customer_id' => :'String',
        :'destination_id' => :'String',
        :'date' => :'Date',
        :'due_date' => :'Date',
        :'id' => :'String',
        :'invoice_delivery_methods' => :'Array<InvoiceDeliveryMethod>',
        :'issue_date' => :'Date',
        :'number' => :'String',
        :'object' => :'String',
        :'status' => :'String',
        :'transaction_details' => :'Array<TransactionDetail>',
        :'uri' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'accepted_at',
        :'billing',
        :'billing_accepted_at',
        :'canceled_at',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `MfkOpenapiRubyClient::Transaction` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `MfkOpenapiRubyClient::Transaction`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'accepted_at')
        self.accepted_at = attributes[:'accepted_at']
      end

      if attributes.key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.key?(:'amounts_per_tax_rate_type')
        if (value = attributes[:'amounts_per_tax_rate_type']).is_a?(Array)
          self.amounts_per_tax_rate_type = value
        end
      end

      if attributes.key?(:'billing')
        self.billing = attributes[:'billing']
      end

      if attributes.key?(:'billing_accepted_at')
        self.billing_accepted_at = attributes[:'billing_accepted_at']
      end

      if attributes.key?(:'billing_condition')
        self.billing_condition = attributes[:'billing_condition']
      end

      if attributes.key?(:'billing_id')
        self.billing_id = attributes[:'billing_id']
      end

      if attributes.key?(:'canceled_at')
        self.canceled_at = attributes[:'canceled_at']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'customer_id')
        self.customer_id = attributes[:'customer_id']
      end

      if attributes.key?(:'destination_id')
        self.destination_id = attributes[:'destination_id']
      end

      if attributes.key?(:'date')
        self.date = attributes[:'date']
      end

      if attributes.key?(:'due_date')
        self.due_date = attributes[:'due_date']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
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

      if attributes.key?(:'object')
        self.object = attributes[:'object']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'transaction_details')
        if (value = attributes[:'transaction_details']).is_a?(Array)
          self.transaction_details = value
        end
      end

      if attributes.key?(:'uri')
        self.uri = attributes[:'uri']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      object_validator = EnumAttributeValidator.new('String', ["transaction"])
      return false unless object_validator.valid?(@object)
      status_validator = EnumAttributeValidator.new('String', ["unexamined", "passed", "rejected", "canceled"])
      return false unless status_validator.valid?(@status)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object Object to be assigned
    def object=(object)
      validator = EnumAttributeValidator.new('String', ["transaction"])
      unless validator.valid?(object)
        fail ArgumentError, "invalid value for \"object\", must be one of #{validator.allowable_values}."
      end
      @object = object
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ["unexamined", "passed", "rejected", "canceled"])
      unless validator.valid?(status)
        fail ArgumentError, "invalid value for \"status\", must be one of #{validator.allowable_values}."
      end
      @status = status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          accepted_at == o.accepted_at &&
          amount == o.amount &&
          amounts_per_tax_rate_type == o.amounts_per_tax_rate_type &&
          billing == o.billing &&
          billing_accepted_at == o.billing_accepted_at &&
          billing_condition == o.billing_condition &&
          billing_id == o.billing_id &&
          canceled_at == o.canceled_at &&
          created_at == o.created_at &&
          customer_id == o.customer_id &&
          destination_id == o.destination_id &&
          date == o.date &&
          due_date == o.due_date &&
          id == o.id &&
          invoice_delivery_methods == o.invoice_delivery_methods &&
          issue_date == o.issue_date &&
          number == o.number &&
          object == o.object &&
          status == o.status &&
          transaction_details == o.transaction_details &&
          uri == o.uri
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [accepted_at, amount, amounts_per_tax_rate_type, billing, billing_accepted_at, billing_condition, billing_id, canceled_at, created_at, customer_id, destination_id, date, due_date, id, invoice_delivery_methods, issue_date, number, object, status, transaction_details, uri].hash
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
