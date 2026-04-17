# Test Plan: Digital Banking Authentication

## 1. Scope
Bu test planı Login modulunun funksional və təhlükəsizlik yoxlanışlarını əhatə edir.

## 2. Risk Assessment (Skeptik Analiz)
* **Brute-force Attack:** Ardıcıl səhv girişlərin qarşısının alınmaması.
* **Sensitive Data Exposure:** Şifrənin "maskalanmaması" və ya loqlarda (logs) açıq görünməsi.
* **Session Management:** İstifadəçi çıxış etdikdən sonra "Back" düyməsi ilə geri qayıda bilməsi.

## 3. Environment
* **Mobile:** iOS 18.6.2 (iPhone)
* **Desktop:** HP Windows 10 pro (Chrome/Edge)
