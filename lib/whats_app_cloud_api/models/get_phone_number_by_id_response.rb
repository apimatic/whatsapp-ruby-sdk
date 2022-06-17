# whats_app_cloud_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module WhatsAppCloudApi
  # GetPhoneNumberByIDResponse Model.
  class GetPhoneNumberByIDResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The verified name associated with the phone number.
    # @return [String]
    attr_accessor :verified_name

    # The string representation of the phone number.
    # @return [String]
    attr_accessor :display_phone_number

    # The ID associated with the phone number.
    # @return [String]
    attr_accessor :id

    # The quality rating of the phone number based on how messages have been
    # received by recipients in recent days.
    # @return [QualityRatingEnum]
    attr_accessor :quality_rating

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['verified_name'] = 'verified_name'
      @_hash['display_phone_number'] = 'display_phone_number'
      @_hash['id'] = 'id'
      @_hash['quality_rating'] = 'quality_rating'
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

    def initialize(verified_name = nil,
                   display_phone_number = nil,
                   id = nil,
                   quality_rating = nil)
      @verified_name = verified_name unless verified_name == SKIP
      @display_phone_number = display_phone_number unless display_phone_number == SKIP
      @id = id unless id == SKIP
      @quality_rating = quality_rating unless quality_rating == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      verified_name = hash.key?('verified_name') ? hash['verified_name'] : SKIP
      display_phone_number =
        hash.key?('display_phone_number') ? hash['display_phone_number'] : SKIP
      id = hash.key?('id') ? hash['id'] : SKIP
      quality_rating =
        hash.key?('quality_rating') ? hash['quality_rating'] : SKIP

      # Create object from extracted values.
      GetPhoneNumberByIDResponse.new(verified_name,
                                     display_phone_number,
                                     id,
                                     quality_rating)
    end
  end
end
