🚀 API Test Documentation (Postman)
Base URL: https://api.secure-bank.az/v1

Endpoint: /auth/login

Method: POST

1. Positive Test: Successful Login
Body (JSON):

JSON
{
  "email": "user@bank.az",
  "password": "hashed_password_here"
}
Expected Result:

Status Code: 200 OK

Response: İçində access_token və expires_in (məs: 3600) olmalıdır.

2. Negative Test: Invalid Credentials
Body (JSON):

JSON
{
  "email": "user@bank.az",
  "password": "wrong_password"
}
Expected Result:

Status Code: 401 Unauthorized

Response: {"error": "Invalid credentials"}

3. Security Test: No Token after Logout
Endpoint: /account/balance

Header: Authorization: Bearer [OLD_TOKEN]

Expected Result:

Status Code: 401 Unauthorized (Sessiya sonlandığı üçün köhnə token işləməməlidir).
