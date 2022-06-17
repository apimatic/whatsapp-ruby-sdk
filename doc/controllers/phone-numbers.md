# Phone Numbers

```ruby
phone_numbers_controller = client.phone_numbers
```

## Class Name

`PhoneNumbersController`

## Methods

* [Verify Code](../../doc/controllers/phone-numbers.md#verify-code)
* [Get Phone Number by ID](../../doc/controllers/phone-numbers.md#get-phone-number-by-id)
* [Request Verification Code](../../doc/controllers/phone-numbers.md#request-verification-code)


# Verify Code

Used to verify a phone number's ownership. After you have received a SMS or Voice request code for verification, you need to verify the code that was sent to you.

```ruby
def verify_code(phone_number_id,
                code)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `phone_number_id` | `String` | Template, Required | - |
| `code` | `String` | Form, Required | The code you received after calling FROM_PHONE_NUMBER_ID/request_code. |

## Response Type

[`SuccessResponse`](../../doc/models/success-response.md)

## Example Usage

```ruby
phone_number_id = 'Phone-Number-ID6'
code = '<your-requested-code>'

result = phone_numbers_controller.verify_code(phone_number_id, code)
```

## Example Response *(as JSON)*

```json
{
  "success": true
}
```


# Get Phone Number by ID

When you query all the phone numbers for a WhatsApp Business Account, each phone number has an id. You can directly query for a phone number using this id.

```ruby
def get_phone_number_by_id(phone_number_id)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `phone_number_id` | `String` | Template, Required | - |

## Response Type

[`GetPhoneNumberByIDResponse`](../../doc/models/get-phone-number-by-id-response.md)

## Example Usage

```ruby
phone_number_id = 'Phone-Number-ID6'

result = phone_numbers_controller.get_phone_number_by_id(phone_number_id)
```

## Example Response *(as JSON)*

```json
{
  "verified_name": "Jasper's Market",
  "display_phone_number": "+1 631-555-5555",
  "id": "1906385232743451",
  "quality_rating": "GREEN"
}
```


# Request Verification Code

Used to request a code to verify a phone number's ownership. You need to verify the phone number you want to use to send messages to your customers. Phone numbers must be verified through SMS/voice call. The verification process can be done through the Graph API calls specified below.

```ruby
def request_verification_code(phone_number_id,
                              code_method,
                              locale)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `phone_number_id` | `String` | Template, Required | - |
| `code_method` | [`RequestVerificationCodeMethodEnum`](../../doc/models/request-verification-code-method-enum.md) | Form, Required | Chosen method for verification. |
| `locale` | `String` | Form, Required | Your locale. For example: "en_US". |

## Response Type

[`SuccessResponse`](../../doc/models/success-response.md)

## Example Usage

```ruby
phone_number_id = 'Phone-Number-ID6'
code_method = RequestVerificationCodeMethodEnum::SMS
locale = 'en_US'

result = phone_numbers_controller.request_verification_code(phone_number_id, code_method, locale)
```

## Example Response *(as JSON)*

```json
{
  "success": true
}
```

