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
  class APIAdminInteractiveDeviceSession
    attr_accessor :billable

    attr_accessor :create_time

    attr_accessor :device_id

    attr_accessor :device_model_id

    attr_accessor :device_model_name

    attr_accessor :device_name

    attr_accessor :device_time

    attr_accessor :duration

    attr_accessor :end_time

    attr_accessor :error_message

    attr_accessor :id

    attr_accessor :self_uri

    attr_accessor :start_time

    attr_accessor :state

    attr_accessor :type

    attr_accessor :user_email

    attr_accessor :user_id

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
        :'billable' => :'billable',
        :'create_time' => :'createTime',
        :'device_id' => :'deviceId',
        :'device_model_id' => :'deviceModelId',
        :'device_model_name' => :'deviceModelName',
        :'device_name' => :'deviceName',
        :'device_time' => :'deviceTime',
        :'duration' => :'duration',
        :'end_time' => :'endTime',
        :'error_message' => :'errorMessage',
        :'id' => :'id',
        :'self_uri' => :'selfURI',
        :'start_time' => :'startTime',
        :'state' => :'state',
        :'type' => :'type',
        :'user_email' => :'userEmail',
        :'user_id' => :'userId'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'billable' => :'BOOLEAN',
        :'create_time' => :'DateTime',
        :'device_id' => :'Integer',
        :'device_model_id' => :'Integer',
        :'device_model_name' => :'String',
        :'device_name' => :'String',
        :'device_time' => :'Integer',
        :'duration' => :'Integer',
        :'end_time' => :'DateTime',
        :'error_message' => :'String',
        :'id' => :'Integer',
        :'self_uri' => :'String',
        :'start_time' => :'DateTime',
        :'state' => :'String',
        :'type' => :'String',
        :'user_email' => :'String',
        :'user_id' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'billable')
        self.billable = attributes[:'billable']
      end

      if attributes.has_key?(:'createTime')
        self.create_time = attributes[:'createTime']
      end

      if attributes.has_key?(:'deviceId')
        self.device_id = attributes[:'deviceId']
      end

      if attributes.has_key?(:'deviceModelId')
        self.device_model_id = attributes[:'deviceModelId']
      end

      if attributes.has_key?(:'deviceModelName')
        self.device_model_name = attributes[:'deviceModelName']
      end

      if attributes.has_key?(:'deviceName')
        self.device_name = attributes[:'deviceName']
      end

      if attributes.has_key?(:'deviceTime')
        self.device_time = attributes[:'deviceTime']
      end

      if attributes.has_key?(:'duration')
        self.duration = attributes[:'duration']
      end

      if attributes.has_key?(:'endTime')
        self.end_time = attributes[:'endTime']
      end

      if attributes.has_key?(:'errorMessage')
        self.error_message = attributes[:'errorMessage']
      end

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'selfURI')
        self.self_uri = attributes[:'selfURI']
      end

      if attributes.has_key?(:'startTime')
        self.start_time = attributes[:'startTime']
      end

      if attributes.has_key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'userEmail')
        self.user_email = attributes[:'userEmail']
      end

      if attributes.has_key?(:'userId')
        self.user_id = attributes[:'userId']
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
      state_validator = EnumAttributeValidator.new('String', ['ABORTED', 'EXCLUDED', 'FAILED', 'RUNNING', 'SUCCEEDED', 'TIMEOUT', 'WAITING', 'WARNING'])
      return false unless state_validator.valid?(@state)
      type_validator = EnumAttributeValidator.new('String', ['AUTOMATIC', 'MANUAL', 'REMOTE'])
      return false unless type_validator.valid?(@type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] state Object to be assigned
    def state=(state)
      validator = EnumAttributeValidator.new('String', ['ABORTED', 'EXCLUDED', 'FAILED', 'RUNNING', 'SUCCEEDED', 'TIMEOUT', 'WAITING', 'WARNING'])
      unless validator.valid?(state)
        fail ArgumentError, 'invalid value for "state", must be one of #{validator.allowable_values}.'
      end
      @state = state
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ['AUTOMATIC', 'MANUAL', 'REMOTE'])
      unless validator.valid?(type)
        fail ArgumentError, 'invalid value for "type", must be one of #{validator.allowable_values}.'
      end
      @type = type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          billable == o.billable &&
          create_time == o.create_time &&
          device_id == o.device_id &&
          device_model_id == o.device_model_id &&
          device_model_name == o.device_model_name &&
          device_name == o.device_name &&
          device_time == o.device_time &&
          duration == o.duration &&
          end_time == o.end_time &&
          error_message == o.error_message &&
          id == o.id &&
          self_uri == o.self_uri &&
          start_time == o.start_time &&
          state == o.state &&
          type == o.type &&
          user_email == o.user_email &&
          user_id == o.user_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [billable, create_time, device_id, device_model_id, device_model_name, device_name, device_time, duration, end_time, error_message, id, self_uri, start_time, state, type, user_email, user_id].hash
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