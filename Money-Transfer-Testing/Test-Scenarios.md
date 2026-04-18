# Money Transfer & Transaction Testing 💸

Bu bölmədə bank daxili köçürmələr zamanı tətbiq olunan kritik test ssenariləri və yoxlanış nöqtələri qeyd olunub.

### 1. Funksional Test Ssenariləri (UI/Logic)
* **Kifayət qədər vəsait olmadıqda:** Balansdan artıq məbləğ göndərilərkən sistemin "Yetersiz balans" xətası verməsinin yoxlanılması.
* **Mənfi məbləğ testi:** Məbləğ hissəsinə "-50" yazıldıqda "Göndər" düyməsinin aktiv olmamasının yoxlanılması.
* **Limit yoxlanışı:** Gündəlik köçürmə limitindən artıq məbləğ göndərildikdə sistemin bloklaması.
* **Double Click Test:** "Göndər" düyməsini ard-arda iki dəfə sıxdıqda pulun yalnız bir dəfə çıxılmasının yoxlanılması.

### 2. Backend & SQL Verifikasiyası
* **Balance Update:** Köçürmədən dərhal sonra həm göndərən, həm də alan tərəfin balansının SQL bazasında dürüst yenilənməsinin yoxlanılması.
* **Transaction History:** Hər bir uğurlu köçürmənin `transactions` cədvəlinə unikal `transaction_id` ilə düşməsinin yoxlanılması.
