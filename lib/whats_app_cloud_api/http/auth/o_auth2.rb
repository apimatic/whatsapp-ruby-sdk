# whats_app_cloud_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module WhatsAppCloudApi
  # Utility class for OAuth 2 authorization and token management.
  class OAuth2
    # Add OAuth2 authentication to the http request.
    # @param [HttpRequest] The HttpRequest object to which authentication will
    # be added.
    def self.apply(config, http_request)
      token = config.access_token
      http_request.headers['Authorization'] = "Bearer #{token}"
    end
  end
end
