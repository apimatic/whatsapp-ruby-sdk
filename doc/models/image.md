
# Image

## Structure

`Image`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `String` | Optional | The media object ID. Required when you are not using a link. |
| `link` | `String` | Optional | The protocol and URL of the media to be sent. Use only with HTTP/HTTPS URLs. Required when you are not using an uploaded media ID. |
| `caption` | `String` | Optional | Describes the specified image media. |

## Example (as JSON)

```json
{
  "id": "<image-object-id>"
}
```

