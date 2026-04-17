# 🏦 Test Plan: Digital Banking Authentication Module

## 1. Introduction
Bu sənəd bank tətbiqinin Giriş (Login) modulunun təhlükəsizlik və funksional dözümlülüyünü yoxlamaq üçün hazırlanmışdır. Əsas fokus istifadəçi məlumatlarının qorunması və icazəsiz girişlərin qarşısının alınmasıdır.

## 2. Risk Assessment & Mitigation (Kritik Analiz)
| Risk | Severity | Mitigation Strategy |
| :--- | :--- | :--- |
| **Brute-force Attack** | Critical | 3 uğursuz cəhddən sonra hesabın 15 dəqiqəlik bloklanması. |
| **Session Hijacking** | Critical | Session ID-nin hər login-də yenilənməsi və 5 dəqiqəlik inaktivlikdən sonra avtomatik Logout. |
| **Data Leakage** | High | Şifrələrin bazada "Plain Text" kimi saxlanılmaması və loqlarda görünməməsi. |
| **SQL Injection** | Critical | Giriş sahələrində (username/password) xüsusi simvolların (`' OR 1=1 --`) filtrasiyası. |

## 3. Test Scope
* **Functional:** Valid/Invalid credentials, "Remember Me" funksiyası.
* **Security:** 2FA (İki faktorlu təsdiqləmə) axışı və sessiya sonlanması.
* **UI/UX:** iOS 18.6.2 standartlarına uyğun vizual və funksional yoxlanış.

## 4. Environment & Tools
* **Device:** iPhone (iOS 18.6.2) / HP Laptop (Windows 11)
* **Tools:** GitHub (Documentation), SQL (Backend validation), Postman (API Testing).
* **Network:** VPN və Public Wi-Fi üzərindən təhlükəsizlik yoxlanışları.

## 5. Exit Criteria
Heç bir "Critical" və ya "High" severity bug qalmadıqda test prosesi uğurla tamamlanmış sayılır.
