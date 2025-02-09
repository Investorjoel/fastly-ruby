=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://developer.fastly.com/reference/api/) 

The version of the OpenAPI document: 1.0.0
Contact: oss@fastly.com

=end

require 'date'
require 'time'

module Fastly
  class LoggingS3AllOf
    # The access key for your S3 account. Not required if `iam_role` is provided.
    attr_accessor :access_key

    # The access control list (ACL) specific request header. See the AWS documentation for [Access Control List (ACL) Specific Request Headers](https://docs.aws.amazon.com/AmazonS3/latest/API/mpUploadInitiate.html#initiate-mpu-acl-specific-request-headers) for more information.
    attr_accessor :acl

    # The bucket name for S3 account.
    attr_accessor :bucket_name

    # The domain of the Amazon S3 endpoint.
    attr_accessor :domain

    # The Amazon Resource Name (ARN) for the IAM role granting Fastly access to S3. Not required if `access_key` and `secret_key` are provided.
    attr_accessor :iam_role

    # The path to upload logs to.
    attr_accessor :path

    # A PGP public key that Fastly will use to encrypt your log files before writing them to disk.
    attr_accessor :public_key

    # The S3 redundancy level.
    attr_accessor :redundancy

    # The secret key for your S3 account. Not required if `iam_role` is provided.
    attr_accessor :secret_key

    # Optional server-side KMS Key Id. Must be set if `server_side_encryption` is set to `aws:kms` or `AES256`.
    attr_accessor :server_side_encryption_kms_key_id

    # Set this to `AES256` or `aws:kms` to enable S3 Server Side Encryption.
    attr_accessor :server_side_encryption

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'access_key' => :'access_key',
        :'acl' => :'acl',
        :'bucket_name' => :'bucket_name',
        :'domain' => :'domain',
        :'iam_role' => :'iam_role',
        :'path' => :'path',
        :'public_key' => :'public_key',
        :'redundancy' => :'redundancy',
        :'secret_key' => :'secret_key',
        :'server_side_encryption_kms_key_id' => :'server_side_encryption_kms_key_id',
        :'server_side_encryption' => :'server_side_encryption'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.fastly_types
      {
        :'access_key' => :'String',
        :'acl' => :'String',
        :'bucket_name' => :'String',
        :'domain' => :'String',
        :'iam_role' => :'String',
        :'path' => :'String',
        :'public_key' => :'String',
        :'redundancy' => :'String',
        :'secret_key' => :'String',
        :'server_side_encryption_kms_key_id' => :'String',
        :'server_side_encryption' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.fastly_nullable
      Set.new([
        :'access_key',
        :'iam_role',
        :'path',
        :'public_key',
        :'redundancy',
        :'secret_key',
        :'server_side_encryption_kms_key_id',
        :'server_side_encryption'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Fastly::LoggingS3AllOf` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Fastly::LoggingS3AllOf`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'access_key')
        self.access_key = attributes[:'access_key']
      end

      if attributes.key?(:'acl')
        self.acl = attributes[:'acl']
      end

      if attributes.key?(:'bucket_name')
        self.bucket_name = attributes[:'bucket_name']
      end

      if attributes.key?(:'domain')
        self.domain = attributes[:'domain']
      end

      if attributes.key?(:'iam_role')
        self.iam_role = attributes[:'iam_role']
      end

      if attributes.key?(:'path')
        self.path = attributes[:'path']
      else
        self.path = 'null'
      end

      if attributes.key?(:'public_key')
        self.public_key = attributes[:'public_key']
      else
        self.public_key = 'null'
      end

      if attributes.key?(:'redundancy')
        self.redundancy = attributes[:'redundancy']
      else
        self.redundancy = 'null'
      end

      if attributes.key?(:'secret_key')
        self.secret_key = attributes[:'secret_key']
      end

      if attributes.key?(:'server_side_encryption_kms_key_id')
        self.server_side_encryption_kms_key_id = attributes[:'server_side_encryption_kms_key_id']
      else
        self.server_side_encryption_kms_key_id = 'null'
      end

      if attributes.key?(:'server_side_encryption')
        self.server_side_encryption = attributes[:'server_side_encryption']
      else
        self.server_side_encryption = 'null'
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
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          access_key == o.access_key &&
          acl == o.acl &&
          bucket_name == o.bucket_name &&
          domain == o.domain &&
          iam_role == o.iam_role &&
          path == o.path &&
          public_key == o.public_key &&
          redundancy == o.redundancy &&
          secret_key == o.secret_key &&
          server_side_encryption_kms_key_id == o.server_side_encryption_kms_key_id &&
          server_side_encryption == o.server_side_encryption
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [access_key, acl, bucket_name, domain, iam_role, path, public_key, redundancy, secret_key, server_side_encryption_kms_key_id, server_side_encryption].hash
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
      self.class.fastly_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.fastly_nullable.include?(key)
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
        klass = Fastly.const_get(type)
        klass.respond_to?(:fastly_one_of) ? klass.build(value) : klass.build_from_hash(value)
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
          is_nullable = self.class.fastly_nullable.include?(attr)
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
