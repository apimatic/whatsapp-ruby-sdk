
# Currency

## Structure

`Currency`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `fallback_value` | `String` | Required | Default text if localization fails. |
| `code` | `String` | Required | Currency code as defined in ISO 4217. |
| `amount_1000` | `Integer` | Required | Amount multiplied by 1000. |

## Example (as JSON)

```json
{
  "fallback_value": "$100.99",
  "code": "USD",
  "amount_1000": 100990
}
```

