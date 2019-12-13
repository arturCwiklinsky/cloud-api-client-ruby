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
  class APIDeviceTimeCountSessionReportEntry
    attr_accessor :count_device_sessions

    attr_accessor :count_test_runs

    attr_accessor :day

    attr_accessor :device_model_name

    attr_accessor :device_time

    attr_accessor :id

    attr_accessor :os_type

    attr_accessor :project_name

    attr_accessor :self_uri

    attr_accessor :user_email

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
        :'count_device_sessions' => :'countDeviceSessions',
        :'count_test_runs' => :'countTestRuns',
        :'day' => :'day',
        :'device_model_name' => :'deviceModelName',
        :'device_time' => :'deviceTime',
        :'id' => :'id',
        :'os_type' => :'osType',
        :'project_name' => :'projectName',
        :'self_uri' => :'selfURI',
        :'user_email' => :'userEmail'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'count_device_sessions' => :'Integer',
        :'count_test_runs' => :'Integer',
        :'day' => :'DateTime',
        :'device_model_name' => :'String',
        :'device_time' => :'Integer',
        :'id' => :'Integer',
        :'os_type' => :'String',
        :'project_name' => :'String',
        :'self_uri' => :'String',
        :'user_email' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'countDeviceSessions')
        self.count_device_sessions = attributes[:'countDeviceSessions']
      end

      if attributes.has_key?(:'countTestRuns')
        self.count_test_runs = attributes[:'countTestRuns']
      end

      if attributes.has_key?(:'day')
        self.day = attributes[:'day']
      end

      if attributes.has_key?(:'deviceModelName')
        self.device_model_name = attributes[:'deviceModelName']
      end

      if attributes.has_key?(:'deviceTime')
        self.device_time = attributes[:'deviceTime']
      end

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'osType')
        self.os_type = attributes[:'osType']
      end

      if attributes.has_key?(:'projectName')
        self.project_name = attributes[:'projectName']
      end

      if attributes.has_key?(:'selfURI')
        self.self_uri = attributes[:'selfURI']
      end

      if attributes.has_key?(:'userEmail')
        self.user_email = attributes[:'userEmail']
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
      os_type_validator = EnumAttributeValidator.new('String', ['IOS', 'ANDROID', 'DESKTOP', 'UNDEFINED'])
      return false unless os_type_validator.valid?(@os_type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] os_type Object to be assigned
    def os_type=(os_type)
      validator = EnumAttributeValidator.new('String', ['IOS', 'ANDROID', 'DESKTOP', 'UNDEFINED'])
      unless validator.valid?(os_type)
        fail ArgumentError, 'invalid value for "os_type", must be one of #{validator.allowable_values}.'
      end
      @os_type = os_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          count_device_sessions == o.count_device_sessions &&
          count_test_runs == o.count_test_runs &&
          day == o.day &&
          device_model_name == o.device_model_name &&
          device_time == o.device_time &&
          id == o.id &&
          os_type == o.os_type &&
          project_name == o.project_name &&
          self_uri == o.self_uri &&
          user_email == o.user_email
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [count_device_sessions, count_test_runs, day, device_model_name, device_time, id, os_type, project_name, self_uri, user_email].hash
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