=begin
#Fastly API

#Via the Fastly API you can perform any of the operations that are possible within the management console,  including creating services, domains, and backends, configuring rules or uploading your own application code, as well as account operations such as user administration and billing reports. The API is organized into collections of endpoints that allow manipulation of objects related to Fastly services and accounts. For the most accurate and up-to-date API reference content, visit our [Developer Hub](https://developer.fastly.com/reference/api/) 

The version of the OpenAPI document: 1.0.0


=end

require 'date'
require 'time'

module Fastly
  class LoggingMessageType
    CLASSIC = "classic".freeze
    LOGGLY = "loggly".freeze
    LOGPLEX = "logplex".freeze
    BLANK = "blank".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = LoggingMessageType.constants.select { |c| LoggingMessageType::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #LoggingMessageType" if constantValues.empty?
      value
    end
  end
end