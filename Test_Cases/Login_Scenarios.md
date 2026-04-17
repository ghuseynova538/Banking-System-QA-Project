# 📝 Test Cases: Authentication & Security

| ID | Title | Priority | Pre-conditions | Steps | Expected Result |
| :--- | :--- | :--- | :--- | :--- | :--- |
| **TC-01** | Valid Login | High | User is registered. | 1. Enter valid email.<br>2. Enter valid password.<br>3. Click Login. | Dashboard opens; Session token generated. |
| **TC-02** | SQL Injection Attempt | Critical | Login page open. | 1. Enter `' OR 1=1 --` in username.<br>2. Enter any password.<br>3. Click Login. | Access denied; Error message displayed. |
| **TC-03** | Brute-force Protection | Critical | Account exists. | 1. Enter wrong password 3 times.<br>2. Try a 4th time with correct password. | Account is locked for 15 mins; "Too many attempts" message. |
| **TC-04** | Session Timeout | High | User is logged in. | 1. Stay inactive for 5 minutes.<br>2. Click any internal link (e.g., Transfers). | User is redirected to Login page automatically. |
| **TC-05** | Masked Password Field | Medium | Login page open. | 1. Type password in the field. | Characters are shown as dots/asterisks, not plain text. |
| **TC-06** | Browser "Back" Button after Logout | High | User just logged out. | 1. Click "Logout".<br>2. Click browser's "Back" button. | User should NOT see the dashboard; redirected to Login. |
