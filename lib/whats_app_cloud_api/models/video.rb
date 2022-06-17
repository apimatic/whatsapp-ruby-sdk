# whats_app_cloud_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module WhatsAppCloudApi
  # Video Model.
  class Video < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The protocol and URL of the media to be sent. Use only with HTTP/HTTPS
    # URLs. Required when you are not using an uploaded media ID.
    # @return [String]
    attr_accessor :link

    # Required when you are not using a link. The media object ID.
    # @return [String]
    attr_accessor :id

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['link'] = 'link'
      @_hash['id'] = 'id'
      @_hash
    end

    # An array for optional fields
    def optionals
      %w[
        link
        id
      ]
    end

    # An array for nullable fields
    def nullables
      []
    end

    def initialize(link = nil,
                   id = nil)
      @link = link unless link == SKIP
      @id = id unless id == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      link = hash.key?('link') ? hash['link'] : SKIP
      id = hash.key?('id') ? hash['id'] : SKIP

      # Create object from extracted values.
      Video.new(link,
                id)
    end
  end
end
