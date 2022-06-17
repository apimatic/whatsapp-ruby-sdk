
# Phone Object

## Structure

`PhoneObject`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `phone` | `String` | Optional | Automatically populated with the wa_id value as a formatted phone number. |
| `wa_id` | `String` | Optional | WhatsApp ID. |
| `type` | [`PhoneTypeEnum`](../../doc/models/phone-type-enum.md) | Optional | - |

## Example (as JSON)

```json
{
  "phone": "<CONTACT_PHONE>",
  "wa_id": "<CONTACT_WA_ID>",
  "type": "HOME"
}
```

