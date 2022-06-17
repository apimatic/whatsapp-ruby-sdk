
# Button Parameter

## Structure

`ButtonParameter`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `type` | [`ButtonParameterTypeEnum`](../../doc/models/button-parameter-type-enum.md) | Required | Indicates the type of parameter for the button. |
| `payload` | `String` | Optional | Required for quick_reply buttons. Developer-defined payload that is returned when the button is clicked in addition to the display text on the button. |
| `text` | `String` | Optional | Required for URL buttons. Developer-provided suffix that is appended to the predefined prefix URL in the template. |

## Example (as JSON)

```json
{
  "type": "payload",
  "payload": null,
  "text": null
}
```

