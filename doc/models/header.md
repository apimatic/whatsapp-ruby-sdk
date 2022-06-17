
# Header

## Structure

`Header`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `type` | [`HeaderTypeEnum`](../../doc/models/header-type-enum.md) | Required | The header type you would like to use. |
| `text` | `String` | Optional | Required if type is set to text. Text for the header. Formatting allows emojis, but not markdown.<br>**Constraints**: *Maximum Length*: `60` |
| `video` | [`Video`](../../doc/models/video.md) | Optional | Required if type is set to video. Contains the media object for this video. |
| `image` | [`Image`](../../doc/models/image.md) | Optional | Required if type is set to image. Contains the media object for this image. |
| `document` | [`Document`](../../doc/models/document.md) | Optional | Required if type is set to document. Contains the media object for this document. |

## Example (as JSON)

```json
{
  "type": "text",
  "text": "<Header List Message>"
}
```

