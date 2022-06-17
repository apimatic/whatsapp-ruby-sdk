# whats_app_cloud_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module WhatsAppCloudApi
  # TwoStepVerificationController
  class TwoStepVerificationController < BaseController
    def initialize(config, http_call_back: nil)
      super(config, http_call_back: http_call_back)
    end

    # You are required to set up two-step verification for your phone number, as
    # this provides an extra layer of security to the business accounts. You can
    # use this endpoint to change two-step verification code associated with
    # your account.
    # After you change the verification code, future requests like changing the
    # name, must use the new code.
    # You set up two-factor verification and register a phone number in the same
    # API call.
    # @param [String] phone_number_id Required parameter: Example:
    # @param [SetTwoStepVerificationCodeRequest] body Required parameter:
    # Example:
    # @return [SuccessResponse] response from the API call
    def set_two_step_verification_code(phone_number_id,
                                       body)
      # Prepare query url.
      _query_builder = config.get_base_uri
      _query_builder << '/{Phone-Number-ID}'
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
      SuccessResponse.from_hash(decoded)
    end
  end
end