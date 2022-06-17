# whats_app_cloud_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module WhatsAppCloudApi
  # RegisterPhoneRequest Model.
  class RegisterPhoneRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Messaging service used. In this case, use "whatsapp".
    # @return [String]
    attr_accessor :messaging_product

    # A 6-digit pin you have previously set up - See Set Two-Step Verification.
    # @return [String]
    attr_accessor :pin

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['messaging_product'] = 'messaging_product'
      @_hash['pin'] = 'pin'
      @_hash
    end

    # An array for optional fields
    def optionals
      []
    end

    # An array for nullable fields
    def nullables
      []
    end

    def initialize(messaging_product = nil,
                   pin = nil)
      @messaging_product = messaging_product unless messaging_product == SKIP
      @pin = pin unless pin == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      messaging_product =
        hash.key?('messaging_product') ? hash['messaging_product'] : SKIP
      pin = hash.key?('pin') ? hash['pin'] : SKIP

      # Create object from extracted values.
      RegisterPhoneRequest.new(messaging_product,
                               pin)
    end
  end
end
