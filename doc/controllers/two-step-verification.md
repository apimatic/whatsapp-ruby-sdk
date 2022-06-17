# Two-Step Verification

```ruby
two_step_verification_controller = client.two_step_verification
```

## Class Name

`TwoStepVerificationController`


# Set Two Step Verification Code

You are required to set up two-step verification for your phone number, as this provides an extra layer of security to the business accounts. You can use this endpoint to change two-step verification code associated with your account.
After you change the verification code, future requests like changing the name, must use the new code.

You set up two-factor verification and register a phone number in the same API call.

```ruby
def set_two_step_verification_code(phone_number_id,
                                   body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `phone_number_id` | `String` | Template, Required | - |
| `body` | [`SetTwoStepVerificationCodeRequest`](../../doc/models/set-two-step-verification-code-request.md) | Body, Required | - |

## Response Type

[`SuccessResponse`](../../doc/models/success-response.md)

## Example Usage

```ruby
phone_number_id = 'Phone-Number-ID6'
body = SetTwoStepVerificationCodeRequest.new
body.pin = '<6-digit-pin>'

result = two_step_verification_controller.set_two_step_verification_code(phone_number_id, body)
```

## Example Response *(as JSON)*

```json
{
  "success": true
}
```

