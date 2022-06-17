
# Parameter

## Structure

`Parameter`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `type` | [`ParameterTypeEnum`](../../doc/models/parameter-type-enum.md) | Required | Describes the parameter type. For text-based templates, the only supported parameter types are text, currency, date_time. |
| `text` | `String` | Optional | Required when type=text. The message’s text. For the header component, the character limit is 60 characters. For the body component, the character limit is 1024 characters. |
| `currency` | [`Currency`](../../doc/models/currency.md) | Optional | Required when type=currency. |
| `date_time` | [`DateTimeObject`](../../doc/models/date-time-object.md) | Optional | Required when type=date_time. |
| `image` | [`Image`](../../doc/models/image.md) | Optional | Required when type=image. |
| `document` | [`Document`](../../doc/models/document.md) | Optional | Required when type=document. Only PDF documents are supported for media-based message templates. |
| `video` | [`Video`](../../doc/models/video.md) | Optional | Required when type=video. |

## Example (as JSON)

```json
{
  "type": "text",
  "text": "text-string"
}
```

