
# Address

## Structure

`Address`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `street` | `String` | Optional | Street number and name |
| `city` | `String` | Optional | City name. |
| `state` | `String` | Optional | State abbreviation. |
| `zip` | `String` | Optional | ZIP code. |
| `country` | `String` | Optional | Full country name. |
| `country_code` | `String` | Optional | Two-letter country abbreviation. |
| `type` | [`PersonalInformationTypeEnum`](../../doc/models/personal-information-type-enum.md) | Optional | - |

## Example (as JSON)

```json
{
  "street": "<ADDRESS_STREET>",
  "city": "<ADDRESS_CITY>",
  "state": "<ADDRESS_STATE>",
  "zip": "<ADDRESS_ZIP>",
  "country": "<ADDRESS_COUNTRY>",
  "country_code": "<ADDRESS_COUNTRY_CODE>",
  "type": "HOME"
}
```

