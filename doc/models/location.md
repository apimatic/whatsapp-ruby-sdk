
# Location

## Structure

`Location`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `latitude` | `String` | Required | Latitude of the location. |
| `longitude` | `String` | Required | Longitude of the location. |
| `name` | `String` | Optional | Name of the location. |
| `address` | `String` | Optional | Address of the location. Only displayed if name is present. |

## Example (as JSON)

```json
{
  "latitude": "<LOCATION_LATITUDE>",
  "longitude": "<LOCATION_LONGITUDE>",
  "name": "<LOCATION_NAME>",
  "address": "<LOCATION_ADDRESS>"
}
```

