-- 1. Göndərən və Alan tərəfin balansını müqayisəli yoxlamaq
SELECT user_id, balance FROM accounts 
WHERE user_id IN ('Sender_ID', 'Receiver_ID');

-- 2. Son edilən əməliyyatın tarixçəyə (History) düşməsini yoxlamaq
SELECT * FROM transactions 
WHERE sender_id = 'Sender_ID' 
ORDER BY transaction_date DESC 
LIMIT 1;

-- 3. Statusun 'SUCCESS' olduğunu təsdiqləmək
SELECT status FROM transactions 
WHERE transaction_id = 'TR123456789';
