
# Date Time Object

## Structure

`DateTimeObject`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `fallback_value` | `String` | Required | Default text. For Cloud API, we always use the fallback value, and we do not attempt to localize using other optional fields. |
| `day_of_week` | `Integer` | Optional | - |
| `year` | `Integer` | Optional | - |
| `month` | `Integer` | Optional | - |
| `day_of_month` | `Integer` | Optional | - |
| `hour` | `Integer` | Optional | - |
| `minute` | `Integer` | Optional | - |
| `calendar` | `String` | Optional | - |

## Example (as JSON)

```json
{
  "fallback_value": "February 25, 1977",
  "day_of_week": 5,
  "year": 1977,
  "month": 2,
  "day_of_month": 25,
  "hour": 15,
  "minute": 33,
  "calendar": "GREGORIAN"
}
```

