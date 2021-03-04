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
  # 請求先です。一つの顧客に対して複数作成することができます。請求先の情報を利用して請求書送付を行います。 <aside class=\"info\">請求先は更新ができません。更新したい場合は新規登録をしてご利用ください。</aside>
  class Destination
    # 都道府県・市区町村・番地です。必ず都道府県名から始めてください。
    attr_accessor :address1

    # 建物名・部屋番号などです。
    attr_accessor :address2

    # CCメールアドレスです。最大4件まで登録できます。
    attr_accessor :cc_emails

    # 請求先が登録された日時を示します。
    attr_accessor :created_at

    # 顧客IDです。一意の識別子として自動で付与されます。
    attr_accessor :customer_id

    # 担当者の部署名です。
    attr_accessor :department

    # メールアドレスです。email形式で指定してください。
    attr_accessor :email

    # 請求先IDです。一意の識別子として自動で付与されます。
    attr_accessor :id

    # 担当者名です。
    attr_accessor :name

    # 担当者名カナです。全角カタカナで入力してください。
    attr_accessor :name_kana

    # このObjectの種別を示します。ここでは必ず`destination`が入ります。
    attr_accessor :object

    # 電話番号です。ハイフン有無は任意になります。
    attr_accessor :tel

    # 担当者の役職です。
    attr_accessor :title

    # 請求先URIです。すべてのリソースで一意の識別子として自動で付与されます。
    attr_accessor :uri

    # 郵便番号です。ハイフン有無は任意になります。但しハイフン無しで登録されますと、請求書にもハイフン無しで記載されます。
    attr_accessor :zip_code

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
        :'address1' => :'address1',
        :'address2' => :'address2',
        :'cc_emails' => :'cc_emails',
        :'created_at' => :'created_at',
        :'customer_id' => :'customer_id',
        :'department' => :'department',
        :'email' => :'email',
        :'id' => :'id',
        :'name' => :'name',
        :'name_kana' => :'name_kana',
        :'object' => :'object',
        :'tel' => :'tel',
        :'title' => :'title',
        :'uri' => :'uri',
        :'zip_code' => :'zip_code'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'address1' => :'String',
        :'address2' => :'String',
        :'cc_emails' => :'Array<String>',
        :'created_at' => :'Time',
        :'customer_id' => :'String',
        :'department' => :'String',
        :'email' => :'String',
        :'id' => :'String',
        :'name' => :'String',
        :'name_kana' => :'String',
        :'object' => :'String',
        :'tel' => :'String',
        :'title' => :'String',
        :'uri' => :'String',
        :'zip_code' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `MfkOpenapiRubyClient::Destination` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `MfkOpenapiRubyClient::Destination`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'address1')
        self.address1 = attributes[:'address1']
      end

      if attributes.key?(:'address2')
        self.address2 = attributes[:'address2']
      end

      if attributes.key?(:'cc_emails')
        if (value = attributes[:'cc_emails']).is_a?(Array)
          self.cc_emails = value
        end
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'customer_id')
        self.customer_id = attributes[:'customer_id']
      end

      if attributes.key?(:'department')
        self.department = attributes[:'department']
      end

      if attributes.key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'name_kana')
        self.name_kana = attributes[:'name_kana']
      end

      if attributes.key?(:'object')
        self.object = attributes[:'object']
      end

      if attributes.key?(:'tel')
        self.tel = attributes[:'tel']
      end

      if attributes.key?(:'title')
        self.title = attributes[:'title']
      end

      if attributes.key?(:'uri')
        self.uri = attributes[:'uri']
      end

      if attributes.key?(:'zip_code')
        self.zip_code = attributes[:'zip_code']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@address1.nil? && @address1.to_s.length > 100
        invalid_properties.push('invalid value for "address1", the character length must be smaller than or equal to 100.')
      end

      if !@address1.nil? && @address1.to_s.length < 1
        invalid_properties.push('invalid value for "address1", the character length must be great than or equal to 1.')
      end

      pattern = Regexp.new(/^(北海道|青森県|岩手県|宮城県|秋田県|山形県|福島県|茨城県|栃木県|群馬県|埼玉県|千葉県|東京都|神奈川県|新潟県|富山県|石川県|福井県|山梨県|長野県|岐阜県|静岡県|愛知県|三重県|滋賀県|京都府|大阪府|兵庫県|奈良県|和歌山県|鳥取県|島根県|岡山県|広島県|山口県|徳島県|香川県|愛媛県|高知県|福岡県|佐賀県|長崎県|熊本県|大分県|宮崎県|鹿児島県|沖縄県).+$/)
      if !@address1.nil? && @address1 !~ pattern
        invalid_properties.push("invalid value for \"address1\", must conform to the pattern #{pattern}.")
      end

      if !@address2.nil? && @address2.to_s.length > 100
        invalid_properties.push('invalid value for "address2", the character length must be smaller than or equal to 100.')
      end

      if !@email.nil? && @email.to_s.length > 255
        invalid_properties.push('invalid value for "email", the character length must be smaller than or equal to 255.')
      end

      pattern = Regexp.new(/^[\w.+-]{1,64}@[a-z\d](?:[a-z\d-]{0,253}[a-z\d])?(?:\.[a-z\d](?:[a-z\d-]{0,253}[a-z\d])?)+$/)
      if !@email.nil? && @email !~ pattern
        invalid_properties.push("invalid value for \"email\", must conform to the pattern #{pattern}.")
      end

      pattern = Regexp.new(/^((0(\d{1}-?\d{4}|\d{2}-?\d{3}|\d{3}-?\d{2}|\d{4}-?\d{1}|[5789]0-?\d{4})-?\d{4})|(0120-?\d{3}-?\d{3}))$/)
      if !@tel.nil? && @tel !~ pattern
        invalid_properties.push("invalid value for \"tel\", must conform to the pattern #{pattern}.")
      end

      pattern = Regexp.new(/^\d{3}-?\d{4}$/)
      if !@zip_code.nil? && @zip_code !~ pattern
        invalid_properties.push("invalid value for \"zip_code\", must conform to the pattern #{pattern}.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@address1.nil? && @address1.to_s.length > 100
      return false if !@address1.nil? && @address1.to_s.length < 1
      return false if !@address1.nil? && @address1 !~ Regexp.new(/^(北海道|青森県|岩手県|宮城県|秋田県|山形県|福島県|茨城県|栃木県|群馬県|埼玉県|千葉県|東京都|神奈川県|新潟県|富山県|石川県|福井県|山梨県|長野県|岐阜県|静岡県|愛知県|三重県|滋賀県|京都府|大阪府|兵庫県|奈良県|和歌山県|鳥取県|島根県|岡山県|広島県|山口県|徳島県|香川県|愛媛県|高知県|福岡県|佐賀県|長崎県|熊本県|大分県|宮崎県|鹿児島県|沖縄県).+$/)
      return false if !@address2.nil? && @address2.to_s.length > 100
      return false if !@email.nil? && @email.to_s.length > 255
      return false if !@email.nil? && @email !~ Regexp.new(/^[\w.+-]{1,64}@[a-z\d](?:[a-z\d-]{0,253}[a-z\d])?(?:\.[a-z\d](?:[a-z\d-]{0,253}[a-z\d])?)+$/)
      object_validator = EnumAttributeValidator.new('String', ["destination"])
      return false unless object_validator.valid?(@object)
      return false if !@tel.nil? && @tel !~ Regexp.new(/^((0(\d{1}-?\d{4}|\d{2}-?\d{3}|\d{3}-?\d{2}|\d{4}-?\d{1}|[5789]0-?\d{4})-?\d{4})|(0120-?\d{3}-?\d{3}))$/)
      return false if !@zip_code.nil? && @zip_code !~ Regexp.new(/^\d{3}-?\d{4}$/)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] address1 Value to be assigned
    def address1=(address1)
      if !address1.nil? && address1.to_s.length > 100
        fail ArgumentError, 'invalid value for "address1", the character length must be smaller than or equal to 100.'
      end

      if !address1.nil? && address1.to_s.length < 1
        fail ArgumentError, 'invalid value for "address1", the character length must be great than or equal to 1.'
      end

      pattern = Regexp.new(/^(北海道|青森県|岩手県|宮城県|秋田県|山形県|福島県|茨城県|栃木県|群馬県|埼玉県|千葉県|東京都|神奈川県|新潟県|富山県|石川県|福井県|山梨県|長野県|岐阜県|静岡県|愛知県|三重県|滋賀県|京都府|大阪府|兵庫県|奈良県|和歌山県|鳥取県|島根県|岡山県|広島県|山口県|徳島県|香川県|愛媛県|高知県|福岡県|佐賀県|長崎県|熊本県|大分県|宮崎県|鹿児島県|沖縄県).+$/)
      if !address1.nil? && address1 !~ pattern
        fail ArgumentError, "invalid value for \"address1\", must conform to the pattern #{pattern}."
      end

      @address1 = address1
    end

    # Custom attribute writer method with validation
    # @param [Object] address2 Value to be assigned
    def address2=(address2)
      if !address2.nil? && address2.to_s.length > 100
        fail ArgumentError, 'invalid value for "address2", the character length must be smaller than or equal to 100.'
      end

      @address2 = address2
    end

    # Custom attribute writer method with validation
    # @param [Object] email Value to be assigned
    def email=(email)
      if !email.nil? && email.to_s.length > 255
        fail ArgumentError, 'invalid value for "email", the character length must be smaller than or equal to 255.'
      end

      pattern = Regexp.new(/^[\w.+-]{1,64}@[a-z\d](?:[a-z\d-]{0,253}[a-z\d])?(?:\.[a-z\d](?:[a-z\d-]{0,253}[a-z\d])?)+$/)
      if !email.nil? && email !~ pattern
        fail ArgumentError, "invalid value for \"email\", must conform to the pattern #{pattern}."
      end

      @email = email
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object Object to be assigned
    def object=(object)
      validator = EnumAttributeValidator.new('String', ["destination"])
      unless validator.valid?(object)
        fail ArgumentError, "invalid value for \"object\", must be one of #{validator.allowable_values}."
      end
      @object = object
    end

    # Custom attribute writer method with validation
    # @param [Object] tel Value to be assigned
    def tel=(tel)
      pattern = Regexp.new(/^((0(\d{1}-?\d{4}|\d{2}-?\d{3}|\d{3}-?\d{2}|\d{4}-?\d{1}|[5789]0-?\d{4})-?\d{4})|(0120-?\d{3}-?\d{3}))$/)
      if !tel.nil? && tel !~ pattern
        fail ArgumentError, "invalid value for \"tel\", must conform to the pattern #{pattern}."
      end

      @tel = tel
    end

    # Custom attribute writer method with validation
    # @param [Object] zip_code Value to be assigned
    def zip_code=(zip_code)
      pattern = Regexp.new(/^\d{3}-?\d{4}$/)
      if !zip_code.nil? && zip_code !~ pattern
        fail ArgumentError, "invalid value for \"zip_code\", must conform to the pattern #{pattern}."
      end

      @zip_code = zip_code
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          address1 == o.address1 &&
          address2 == o.address2 &&
          cc_emails == o.cc_emails &&
          created_at == o.created_at &&
          customer_id == o.customer_id &&
          department == o.department &&
          email == o.email &&
          id == o.id &&
          name == o.name &&
          name_kana == o.name_kana &&
          object == o.object &&
          tel == o.tel &&
          title == o.title &&
          uri == o.uri &&
          zip_code == o.zip_code
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [address1, address2, cc_emails, created_at, customer_id, department, email, id, name, name_kana, object, tel, title, uri, zip_code].hash
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
