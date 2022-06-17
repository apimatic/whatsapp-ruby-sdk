# whats_app_cloud_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module WhatsAppCloudApi
  # MessagesController
  class MessagesController < BaseController
    def initialize(config, http_call_back: nil)
      super(config, http_call_back: http_call_back)
    end

    # Use this endpoint to send text messages, media, message templates to your
    # customers.
    # @param [String] phone_number_id Required parameter: Example:
    # @param [Message] body Required parameter: To send a message, you must
    # first assemble a message object with the content you want to send.
    # @return [SendMessageResponse] response from the API call
    def send_message(phone_number_id,
                     body)
      # Prepare query url.
      _query_builder = config.get_base_uri
      _query_builder << '/{Phone-Number-ID}/messages'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'Phone-Number-ID' => { 'value' => phone_number_id, 'encode' => true }
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json',
        'Content-Type' => 'application/json'
      }

      # Prepare and execute HttpRequest.
      _request = config.http_client.post(
        _query_url,
        headers: _headers,
        parameters: body.to_json
      )
      OAuth2.apply(config, _request)
      _response = execute_request(_request)
      validate_response(_response)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_response.raw_body)
      SendMessageResponse.from_hash(decoded)
    end
  end
end