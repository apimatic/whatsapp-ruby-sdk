
# Retrieve Media URL Response

## Structure

`RetrieveMediaURLResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `messaging_product` | `String` | Required | - |
| `url` | `String` | Required | - |
| `mime_type` | `String` | Required | - |
| `sha_256` | `String` | Required | - |
| `file_size` | `String` | Required | - |
| `id` | `String` | Required | - |

## Example (as JSON)

```json
{
  "messaging_product": "whatsapp",
  "url": "<URL>",
  "mime_type": "image/jpeg",
  "sha256": "<HASH>",
  "file_size": "303833",
  "id": "2621233374848975"
}
```

