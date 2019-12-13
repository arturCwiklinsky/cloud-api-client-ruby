=begin
#BitbarCloud API

#BitbarCloud API.

OpenAPI spec version: 2.87.0
Contact: support@bitbar.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.10

=end

require 'date'

module BitbarCloudApiClient
  class APIUser
    attr_accessor :account_id

    attr_accessor :account_service_ids

    attr_accessor :address

    attr_accessor :api_key

    attr_accessor :city

    attr_accessor :code

    attr_accessor :country

    attr_accessor :create_time

    attr_accessor :created_by_email

    attr_accessor :created_by_id

    attr_accessor :delete_time

    attr_accessor :email

    attr_accessor :enabled

    attr_accessor :first_name

    attr_accessor :id

    attr_accessor :is_main_user

    attr_accessor :last_launched_test_time

    attr_accessor :last_login_time

    attr_accessor :last_name

    attr_accessor :main_user_email

    attr_accessor :main_user_id

    attr_accessor :mfa_qr_code_url

    attr_accessor :mfa_status

    attr_accessor :organization

    attr_accessor :phone

    attr_accessor :roles

    attr_accessor :self_uri

    attr_accessor :service_ids

    attr_accessor :state

    attr_accessor :status

    attr_accessor :time_zone

    attr_accessor :vat_id

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
        :'account_id' => :'accountId',
        :'account_service_ids' => :'accountServiceIds',
        :'address' => :'address',
        :'api_key' => :'apiKey',
        :'city' => :'city',
        :'code' => :'code',
        :'country' => :'country',
        :'create_time' => :'createTime',
        :'created_by_email' => :'createdByEmail',
        :'created_by_id' => :'createdById',
        :'delete_time' => :'deleteTime',
        :'email' => :'email',
        :'enabled' => :'enabled',
        :'first_name' => :'firstName',
        :'id' => :'id',
        :'is_main_user' => :'isMainUser',
        :'last_launched_test_time' => :'lastLaunchedTestTime',
        :'last_login_time' => :'lastLoginTime',
        :'last_name' => :'lastName',
        :'main_user_email' => :'mainUserEmail',
        :'main_user_id' => :'mainUserId',
        :'mfa_qr_code_url' => :'mfaQRCodeUrl',
        :'mfa_status' => :'mfaStatus',
        :'organization' => :'organization',
        :'phone' => :'phone',
        :'roles' => :'roles',
        :'self_uri' => :'selfURI',
        :'service_ids' => :'serviceIds',
        :'state' => :'state',
        :'status' => :'status',
        :'time_zone' => :'timeZone',
        :'vat_id' => :'vatId'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'account_id' => :'Integer',
        :'account_service_ids' => :'Array<Integer>',
        :'address' => :'String',
        :'api_key' => :'String',
        :'city' => :'String',
        :'code' => :'String',
        :'country' => :'String',
        :'create_time' => :'DateTime',
        :'created_by_email' => :'String',
        :'created_by_id' => :'Integer',
        :'delete_time' => :'DateTime',
        :'email' => :'String',
        :'enabled' => :'BOOLEAN',
        :'first_name' => :'String',
        :'id' => :'Integer',
        :'is_main_user' => :'BOOLEAN',
        :'last_launched_test_time' => :'DateTime',
        :'last_login_time' => :'DateTime',
        :'last_name' => :'String',
        :'main_user_email' => :'String',
        :'main_user_id' => :'Integer',
        :'mfa_qr_code_url' => :'String',
        :'mfa_status' => :'String',
        :'organization' => :'String',
        :'phone' => :'String',
        :'roles' => :'Array<APIRole>',
        :'self_uri' => :'String',
        :'service_ids' => :'Array<Integer>',
        :'state' => :'String',
        :'status' => :'String',
        :'time_zone' => :'String',
        :'vat_id' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'accountId')
        self.account_id = attributes[:'accountId']
      end

      if attributes.has_key?(:'accountServiceIds')
        if (value = attributes[:'accountServiceIds']).is_a?(Array)
          self.account_service_ids = value
        end
      end

      if attributes.has_key?(:'address')
        self.address = attributes[:'address']
      end

      if attributes.has_key?(:'apiKey')
        self.api_key = attributes[:'apiKey']
      end

      if attributes.has_key?(:'city')
        self.city = attributes[:'city']
      end

      if attributes.has_key?(:'code')
        self.code = attributes[:'code']
      end

      if attributes.has_key?(:'country')
        self.country = attributes[:'country']
      end

      if attributes.has_key?(:'createTime')
        self.create_time = attributes[:'createTime']
      end

      if attributes.has_key?(:'createdByEmail')
        self.created_by_email = attributes[:'createdByEmail']
      end

      if attributes.has_key?(:'createdById')
        self.created_by_id = attributes[:'createdById']
      end

      if attributes.has_key?(:'deleteTime')
        self.delete_time = attributes[:'deleteTime']
      end

      if attributes.has_key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.has_key?(:'enabled')
        self.enabled = attributes[:'enabled']
      end

      if attributes.has_key?(:'firstName')
        self.first_name = attributes[:'firstName']
      end

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'isMainUser')
        self.is_main_user = attributes[:'isMainUser']
      end

      if attributes.has_key?(:'lastLaunchedTestTime')
        self.last_launched_test_time = attributes[:'lastLaunchedTestTime']
      end

      if attributes.has_key?(:'lastLoginTime')
        self.last_login_time = attributes[:'lastLoginTime']
      end

      if attributes.has_key?(:'lastName')
        self.last_name = attributes[:'lastName']
      end

      if attributes.has_key?(:'mainUserEmail')
        self.main_user_email = attributes[:'mainUserEmail']
      end

      if attributes.has_key?(:'mainUserId')
        self.main_user_id = attributes[:'mainUserId']
      end

      if attributes.has_key?(:'mfaQRCodeUrl')
        self.mfa_qr_code_url = attributes[:'mfaQRCodeUrl']
      end

      if attributes.has_key?(:'mfaStatus')
        self.mfa_status = attributes[:'mfaStatus']
      end

      if attributes.has_key?(:'organization')
        self.organization = attributes[:'organization']
      end

      if attributes.has_key?(:'phone')
        self.phone = attributes[:'phone']
      end

      if attributes.has_key?(:'roles')
        if (value = attributes[:'roles']).is_a?(Array)
          self.roles = value
        end
      end

      if attributes.has_key?(:'selfURI')
        self.self_uri = attributes[:'selfURI']
      end

      if attributes.has_key?(:'serviceIds')
        if (value = attributes[:'serviceIds']).is_a?(Array)
          self.service_ids = value
        end
      end

      if attributes.has_key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.has_key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.has_key?(:'timeZone')
        self.time_zone = attributes[:'timeZone']
      end

      if attributes.has_key?(:'vatId')
        self.vat_id = attributes[:'vatId']
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
      mfa_status_validator = EnumAttributeValidator.new('String', ['VERIFICATION_NEED', 'DISABLED', 'ENABLED'])
      return false unless mfa_status_validator.valid?(@mfa_status)
      status_validator = EnumAttributeValidator.new('String', ['INACTIVE', 'DISABLED', 'ENABLED'])
      return false unless status_validator.valid?(@status)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] mfa_status Object to be assigned
    def mfa_status=(mfa_status)
      validator = EnumAttributeValidator.new('String', ['VERIFICATION_NEED', 'DISABLED', 'ENABLED'])
      unless validator.valid?(mfa_status)
        fail ArgumentError, 'invalid value for "mfa_status", must be one of #{validator.allowable_values}.'
      end
      @mfa_status = mfa_status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ['INACTIVE', 'DISABLED', 'ENABLED'])
      unless validator.valid?(status)
        fail ArgumentError, 'invalid value for "status", must be one of #{validator.allowable_values}.'
      end
      @status = status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          account_id == o.account_id &&
          account_service_ids == o.account_service_ids &&
          address == o.address &&
          api_key == o.api_key &&
          city == o.city &&
          code == o.code &&
          country == o.country &&
          create_time == o.create_time &&
          created_by_email == o.created_by_email &&
          created_by_id == o.created_by_id &&
          delete_time == o.delete_time &&
          email == o.email &&
          enabled == o.enabled &&
          first_name == o.first_name &&
          id == o.id &&
          is_main_user == o.is_main_user &&
          last_launched_test_time == o.last_launched_test_time &&
          last_login_time == o.last_login_time &&
          last_name == o.last_name &&
          main_user_email == o.main_user_email &&
          main_user_id == o.main_user_id &&
          mfa_qr_code_url == o.mfa_qr_code_url &&
          mfa_status == o.mfa_status &&
          organization == o.organization &&
          phone == o.phone &&
          roles == o.roles &&
          self_uri == o.self_uri &&
          service_ids == o.service_ids &&
          state == o.state &&
          status == o.status &&
          time_zone == o.time_zone &&
          vat_id == o.vat_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [account_id, account_service_ids, address, api_key, city, code, country, create_time, created_by_email, created_by_id, delete_time, email, enabled, first_name, id, is_main_user, last_launched_test_time, last_login_time, last_name, main_user_email, main_user_id, mfa_qr_code_url, mfa_status, organization, phone, roles, self_uri, service_ids, state, status, time_zone, vat_id].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
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
        temp_model = BitbarCloudApiClient.const_get(type).new
        temp_model.build_from_hash(value)
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
        next if value.nil?
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