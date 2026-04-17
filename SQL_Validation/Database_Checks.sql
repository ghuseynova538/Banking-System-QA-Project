-- ==========================================================
-- PROJECT: Banking System - Backend Data Integrity Validation
-- AUTHOR: Gunel Ayyubova
-- ==========================================================

-- 1. BRUTE-FORCE QORUMASI (SQL Səviyyəsində yoxlanış)
-- Ssenari: 3-dən çox uğursuz cəhdi olan və hələ də bloklanmayan istifadəçiləri tapmaq.
-- Əgər bu sorğu nəticə qaytarırsa, bu KRİTİK BUG-dır.
SELECT user_id, email, login_attempts, is_blocked 
FROM user_security 
WHERE login_attempts >= 3 AND is_blocked = 0;

-- 2. MƏXFİLİK YOXLANIŞI (Data Privacy Check)
-- Ssenari: Bazada şifrələrin oxunaqlı (plain text) qalıb-qalmadığını yoxlamaq.
-- Gözlənilən: Şifrə hash olunmalı, yəni '123' və ya 'qwerty' kimi oxunmamalıdır.
SELECT user_id, email 
FROM users 
WHERE password NOT LIKE '$2y$%' -- BCrypt hash nümunəsi
  AND (password = '123456' OR password = 'password');

-- 3. SESSİYA MÜDDƏTİ (Session Invalidation)
-- Ssenari: Logout olan istifadəçilərin sessiyasının hələ də aktiv qalıb-qalmadığını yoxlamaq.
-- Gözlənilən: logout_time doludursa, session_status 'EXPIRED' olmalıdır.
SELECT session_id, user_id, session_status 
FROM user_sessions 
WHERE logout_time IS NOT NULL AND session_status = 'ACTIVE';
