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
  # 請求先登録情報です。請求先登録時に利用します。一つの顧客に対して複数の請求先を登録できます。
  class DestinationPayload
    # 都道府県・市区町村・番地です。必ず都道府県名から始めてください。
    attr_accessor :address1

    # 建物名・部屋番号などです。
    attr_accessor :address2

    # 請求書をメール送付する際のCCメールアドレスです。最大で4件まで指定できます。
    attr_accessor :cc_emails

    # 請求先を登録する顧客のIDです。
    attr_accessor :customer_id

    # 担当者の部署名です。
    attr_accessor :department

    # メールアドレスです。email形式で指定してください。
    attr_accessor :email

    # 担当者氏名です。
    attr_accessor :name

    # 担当者名カナです。全角カタカナで入力してください。
    attr_accessor :name_kana

    # 電話番号です。ハイフン有無は任意になります。
    attr_accessor :tel

    # 担当者の役職です。
    attr_accessor :title

    # 郵便番号です。ハイフン有無は任意になります。但しハイフン無しで登録されますと、請求書にもハイフン無しで記載されます。
    attr_accessor :zip_code

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'address1' => :'address1',
        :'address2' => :'address2',
        :'cc_emails' => :'cc_emails',
        :'customer_id' => :'customer_id',
        :'department' => :'department',
        :'email' => :'email',
        :'name' => :'name',
        :'name_kana' => :'name_kana',
        :'tel' => :'tel',
        :'title' => :'title',
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
        :'customer_id' => :'String',
        :'department' => :'String',
        :'email' => :'String',
        :'name' => :'String',
        :'name_kana' => :'String',
        :'tel' => :'String',
        :'title' => :'String',
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `MfkOpenapiRubyClient::DestinationPayload` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `MfkOpenapiRubyClient::DestinationPayload`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
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

      if attributes.key?(:'customer_id')
        self.customer_id = attributes[:'customer_id']
      end

      if attributes.key?(:'department')
        self.department = attributes[:'department']
      end

      if attributes.key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'name_kana')
        self.name_kana = attributes[:'name_kana']
      end

      if attributes.key?(:'tel')
        self.tel = attributes[:'tel']
      end

      if attributes.key?(:'title')
        self.title = attributes[:'title']
      end

      if attributes.key?(:'zip_code')
        self.zip_code = attributes[:'zip_code']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @address1.nil?
        invalid_properties.push('invalid value for "address1", address1 cannot be nil.')
      end

      if @address1.to_s.length > 100
        invalid_properties.push('invalid value for "address1", the character length must be smaller than or equal to 100.')
      end

      if @address1.to_s.length < 1
        invalid_properties.push('invalid value for "address1", the character length must be great than or equal to 1.')
      end

      pattern = Regexp.new(/^(北海道|青森県|岩手県|宮城県|秋田県|山形県|福島県|茨城県|栃木県|群馬県|埼玉県|千葉県|東京都|神奈川県|新潟県|富山県|石川県|福井県|山梨県|長野県|岐阜県|静岡県|愛知県|三重県|滋賀県|京都府|大阪府|兵庫県|奈良県|和歌山県|鳥取県|島根県|岡山県|広島県|山口県|徳島県|香川県|愛媛県|高知県|福岡県|佐賀県|長崎県|熊本県|大分県|宮崎県|鹿児島県|沖縄県).+$/)
      if @address1 !~ pattern
        invalid_properties.push("invalid value for \"address1\", must conform to the pattern #{pattern}.")
      end

      if !@address2.nil? && @address2.to_s.length > 100
        invalid_properties.push('invalid value for "address2", the character length must be smaller than or equal to 100.')
      end

      if !@cc_emails.nil? && @cc_emails.length > 4
        invalid_properties.push('invalid value for "cc_emails", number of items must be less than or equal to 4.')
      end

      if @customer_id.nil?
        invalid_properties.push('invalid value for "customer_id", customer_id cannot be nil.')
      end

      if @customer_id.to_s.length < 1
        invalid_properties.push('invalid value for "customer_id", the character length must be great than or equal to 1.')
      end

      if !@department.nil? && @department.to_s.length > 50
        invalid_properties.push('invalid value for "department", the character length must be smaller than or equal to 50.')
      end

      if @email.nil?
        invalid_properties.push('invalid value for "email", email cannot be nil.')
      end

      if @email.to_s.length > 255
        invalid_properties.push('invalid value for "email", the character length must be smaller than or equal to 255.')
      end

      pattern = Regexp.new(/^[\w.+-]{1,64}@[a-z\d](?:[a-z\d-]{0,253}[a-z\d])?(?:\.[a-z\d](?:[a-z\d-]{0,253}[a-z\d])?)+$/)
      if @email !~ pattern
        invalid_properties.push("invalid value for \"email\", must conform to the pattern #{pattern}.")
      end

      if !@name.nil? && @name.to_s.length > 30
        invalid_properties.push('invalid value for "name", the character length must be smaller than or equal to 30.')
      end

      if !@name_kana.nil? && @name_kana.to_s.length > 60
        invalid_properties.push('invalid value for "name_kana", the character length must be smaller than or equal to 60.')
      end

      if @tel.nil?
        invalid_properties.push('invalid value for "tel", tel cannot be nil.')
      end

      pattern = Regexp.new(/^((0(\d{1}-?\d{4}|\d{2}-?\d{3}|\d{3}-?\d{2}|\d{4}-?\d{1}|[5789]0-?\d{4})-?\d{4})|(0120-?\d{3}-?\d{3}))$/)
      if @tel !~ pattern
        invalid_properties.push("invalid value for \"tel\", must conform to the pattern #{pattern}.")
      end

      if !@title.nil? && @title.to_s.length > 30
        invalid_properties.push('invalid value for "title", the character length must be smaller than or equal to 30.')
      end

      if @zip_code.nil?
        invalid_properties.push('invalid value for "zip_code", zip_code cannot be nil.')
      end

      pattern = Regexp.new(/^\d{3}-?\d{4}$/)
      if @zip_code !~ pattern
        invalid_properties.push("invalid value for \"zip_code\", must conform to the pattern #{pattern}.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @address1.nil?
      return false if @address1.to_s.length > 100
      return false if @address1.to_s.length < 1
      return false if @address1 !~ Regexp.new(/^(北海道|青森県|岩手県|宮城県|秋田県|山形県|福島県|茨城県|栃木県|群馬県|埼玉県|千葉県|東京都|神奈川県|新潟県|富山県|石川県|福井県|山梨県|長野県|岐阜県|静岡県|愛知県|三重県|滋賀県|京都府|大阪府|兵庫県|奈良県|和歌山県|鳥取県|島根県|岡山県|広島県|山口県|徳島県|香川県|愛媛県|高知県|福岡県|佐賀県|長崎県|熊本県|大分県|宮崎県|鹿児島県|沖縄県).+$/)
      return false if !@address2.nil? && @address2.to_s.length > 100
      return false if !@cc_emails.nil? && @cc_emails.length > 4
      return false if @customer_id.nil?
      return false if @customer_id.to_s.length < 1
      return false if !@department.nil? && @department.to_s.length > 50
      return false if @email.nil?
      return false if @email.to_s.length > 255
      return false if @email !~ Regexp.new(/^[\w.+-]{1,64}@[a-z\d](?:[a-z\d-]{0,253}[a-z\d])?(?:\.[a-z\d](?:[a-z\d-]{0,253}[a-z\d])?)+$/)
      return false if !@name.nil? && @name.to_s.length > 30
      return false if !@name_kana.nil? && @name_kana.to_s.length > 60
      return false if @tel.nil?
      return false if @tel !~ Regexp.new(/^((0(\d{1}-?\d{4}|\d{2}-?\d{3}|\d{3}-?\d{2}|\d{4}-?\d{1}|[5789]0-?\d{4})-?\d{4})|(0120-?\d{3}-?\d{3}))$/)
      return false if !@title.nil? && @title.to_s.length > 30
      return false if @zip_code.nil?
      return false if @zip_code !~ Regexp.new(/^\d{3}-?\d{4}$/)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] address1 Value to be assigned
    def address1=(address1)
      if address1.nil?
        fail ArgumentError, 'address1 cannot be nil'
      end

      if address1.to_s.length > 100
        fail ArgumentError, 'invalid value for "address1", the character length must be smaller than or equal to 100.'
      end

      if address1.to_s.length < 1
        fail ArgumentError, 'invalid value for "address1", the character length must be great than or equal to 1.'
      end

      pattern = Regexp.new(/^(北海道|青森県|岩手県|宮城県|秋田県|山形県|福島県|茨城県|栃木県|群馬県|埼玉県|千葉県|東京都|神奈川県|新潟県|富山県|石川県|福井県|山梨県|長野県|岐阜県|静岡県|愛知県|三重県|滋賀県|京都府|大阪府|兵庫県|奈良県|和歌山県|鳥取県|島根県|岡山県|広島県|山口県|徳島県|香川県|愛媛県|高知県|福岡県|佐賀県|長崎県|熊本県|大分県|宮崎県|鹿児島県|沖縄県).+$/)
      if address1 !~ pattern
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
    # @param [Object] cc_emails Value to be assigned
    def cc_emails=(cc_emails)
      if !cc_emails.nil? && cc_emails.length > 4
        fail ArgumentError, 'invalid value for "cc_emails", number of items must be less than or equal to 4.'
      end

      @cc_emails = cc_emails
    end

    # Custom attribute writer method with validation
    # @param [Object] customer_id Value to be assigned
    def customer_id=(customer_id)
      if customer_id.nil?
        fail ArgumentError, 'customer_id cannot be nil'
      end

      if customer_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "customer_id", the character length must be great than or equal to 1.'
      end

      @customer_id = customer_id
    end

    # Custom attribute writer method with validation
    # @param [Object] department Value to be assigned
    def department=(department)
      if !department.nil? && department.to_s.length > 50
        fail ArgumentError, 'invalid value for "department", the character length must be smaller than or equal to 50.'
      end

      @department = department
    end

    # Custom attribute writer method with validation
    # @param [Object] email Value to be assigned
    def email=(email)
      if email.nil?
        fail ArgumentError, 'email cannot be nil'
      end

      if email.to_s.length > 255
        fail ArgumentError, 'invalid value for "email", the character length must be smaller than or equal to 255.'
      end

      pattern = Regexp.new(/^[\w.+-]{1,64}@[a-z\d](?:[a-z\d-]{0,253}[a-z\d])?(?:\.[a-z\d](?:[a-z\d-]{0,253}[a-z\d])?)+$/)
      if email !~ pattern
        fail ArgumentError, "invalid value for \"email\", must conform to the pattern #{pattern}."
      end

      @email = email
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if !name.nil? && name.to_s.length > 30
        fail ArgumentError, 'invalid value for "name", the character length must be smaller than or equal to 30.'
      end

      @name = name
    end

    # Custom attribute writer method with validation
    # @param [Object] name_kana Value to be assigned
    def name_kana=(name_kana)
      if !name_kana.nil? && name_kana.to_s.length > 60
        fail ArgumentError, 'invalid value for "name_kana", the character length must be smaller than or equal to 60.'
      end

      @name_kana = name_kana
    end

    # Custom attribute writer method with validation
    # @param [Object] tel Value to be assigned
    def tel=(tel)
      if tel.nil?
        fail ArgumentError, 'tel cannot be nil'
      end

      pattern = Regexp.new(/^((0(\d{1}-?\d{4}|\d{2}-?\d{3}|\d{3}-?\d{2}|\d{4}-?\d{1}|[5789]0-?\d{4})-?\d{4})|(0120-?\d{3}-?\d{3}))$/)
      if tel !~ pattern
        fail ArgumentError, "invalid value for \"tel\", must conform to the pattern #{pattern}."
      end

      @tel = tel
    end

    # Custom attribute writer method with validation
    # @param [Object] title Value to be assigned
    def title=(title)
      if !title.nil? && title.to_s.length > 30
        fail ArgumentError, 'invalid value for "title", the character length must be smaller than or equal to 30.'
      end

      @title = title
    end

    # Custom attribute writer method with validation
    # @param [Object] zip_code Value to be assigned
    def zip_code=(zip_code)
      if zip_code.nil?
        fail ArgumentError, 'zip_code cannot be nil'
      end

      pattern = Regexp.new(/^\d{3}-?\d{4}$/)
      if zip_code !~ pattern
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
          customer_id == o.customer_id &&
          department == o.department &&
          email == o.email &&
          name == o.name &&
          name_kana == o.name_kana &&
          tel == o.tel &&
          title == o.title &&
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
      [address1, address2, cc_emails, customer_id, department, email, name, name_kana, tel, title, zip_code].hash
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
