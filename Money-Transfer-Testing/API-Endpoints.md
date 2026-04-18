### API Transfer Endpoint Analizi

**Method:** `POST`  
**URL:** `https://api.bankname.az/v1/transfers/send`

**Request Body (JSON):**
```json
{
  "sender_account": "AZ99IBA001...",
  "receiver_account": "AZ99ABB002...",
  "amount": 150.00,
  "currency": "AZN",
  "description": "Hədiyyə"
}



Expected Responses:

200 OK: Köçürmə uğurludur.

400 Bad Request: Yanlış format və ya mənfi məbləğ.

403 Forbidden: Limit keçilib və ya hesab blokdadır.
