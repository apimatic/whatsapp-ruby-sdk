# whats_app_cloud_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module WhatsAppCloudApi
  # Interactive Model.
  class Interactive < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Action you want the user to perform after reading the message.
    # @return [Action]
    attr_accessor :action

    # The body of the message. Emojis and markdown are supported.
    # @return [Body]
    attr_accessor :body

    # The footer of the message. Emojis and markdown are supported.
    # @return [Footer]
    attr_accessor :footer

    # Header content displayed on top of a message.
    # @return [Header]
    attr_accessor :header

    # The type of interactive message you want to send.
    # @return [InteractiveTypeEnum]
    attr_accessor :type

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['action'] = 'action'
      @_hash['body'] = 'body'
      @_hash['footer'] = 'footer'
      @_hash['header'] = 'header'
      @_hash['type'] = 'type'
      @_hash
    end

    # An array for optional fields
    def optionals
      %w[
        footer
        header
      ]
    end

    # An array for nullable fields
    def nullables
      []
    end

    def initialize(action = nil,
                   body = nil,
                   type = nil,
                   footer = nil,
                   header = nil)
      @action = action unless action == SKIP
      @body = body unless body == SKIP
      @footer = footer unless footer == SKIP
      @header = header unless header == SKIP
      @type = type unless type == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      action = Action.from_hash(hash['action']) if hash['action']
      body = Body.from_hash(hash['body']) if hash['body']
      type = hash.key?('type') ? hash['type'] : SKIP
      footer = Footer.from_hash(hash['footer']) if hash['footer']
      header = Header.from_hash(hash['header']) if hash['header']

      # Create object from extracted values.
      Interactive.new(action,
                      body,
                      type,
                      footer,
                      header)
    end
  end
end
