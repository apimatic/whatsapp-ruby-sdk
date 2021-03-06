# whats_app_cloud_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module WhatsAppCloudApi
  # Row Model.
  class Row < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :title

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :description

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['title'] = 'title'
      @_hash['description'] = 'description'
      @_hash
    end

    # An array for optional fields
    def optionals
      %w[
        description
      ]
    end

    # An array for nullable fields
    def nullables
      []
    end

    def initialize(id = nil,
                   title = nil,
                   description = nil)
      @id = id unless id == SKIP
      @title = title unless title == SKIP
      @description = description unless description == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : SKIP
      title = hash.key?('title') ? hash['title'] : SKIP
      description = hash.key?('description') ? hash['description'] : SKIP

      # Create object from extracted values.
      Row.new(id,
              title,
              description)
    end
  end
end
