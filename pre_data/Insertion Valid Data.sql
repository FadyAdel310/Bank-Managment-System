insert into BANK_ADMINS(id , first_name , last_name , email , password)
values ('110000' , 'Fady' , 'Adel' , 'admin1@gmail.com' , 'admin1');

insert into BANK_ADMINS(id , first_name , last_name , email , password)
values ('110001' , 'Kerolous' , 'Romany' , 'admin2@gmail.com' , 'admin2');

-------------------------------------------------------------------

insert into BANK_EMPLOYEES(id , first_name , last_name , email , password , position , colleage , year , grade , accepted_flag)
values ('210000' , 'Ahmed' , 'Adel' , 'A.Adel@gmail.com' , 'A.Adel@' , 'Manager' , 'Faculty of Commerse' , '2001' , 'A' , 'true');

insert into BANK_EMPLOYEES(id , first_name , last_name , email , password , position , colleage , year , grade , accepted_flag)
values ('210001' , 'Ali' , 'Maher' , 'A.Maher@gmail.com' , 'A.Maher@' , 'Manager' , 'Faculty of Commerse' , '2002' , 'A' , 'False');

insert into BANK_EMPLOYEES(id , first_name , last_name , email , password , position , colleage , year , grade , accepted_flag)
values ('210002' , 'Kero' , 'Ali' , 'K.Ali@gmail.com' , 'K.Ali@' , 'Hr' , 'Faculty of Law' , '2000' , 'B' , 'true');

insert into BANK_EMPLOYEES(id , first_name , last_name , email , password , position , colleage , year , grade , accepted_flag)
values ('210003' , 'Ehab' , 'Ahmed' , 'E.Ahmed@gmail.com' , 'E.Ahmed@' , 'Hr' , 'Faculty of Engineering' , '2004' , 'B' , 'false');

insert into BANK_EMPLOYEES(id , first_name , last_name , email , password , position , colleage , year , grade , accepted_flag)
values ('210004' , 'Hany' , 'Samir' , 'H.Samir@gmail.com' , 'H.Samir@' , 'Technical support' , 'Faculty of CS' , '2004' , 'A+' , 'true');

insert into BANK_EMPLOYEES(id , first_name , last_name , email , password , position , colleage , year , grade , accepted_flag)
values ('210005' , 'Yehya' , 'Amr' , 'Y.Amr@gmail.com' , 'Y.Amr@' , 'Technical support' , 'Faculty of CS' , '2004' , 'B+' , 'false');

insert into BANK_EMPLOYEES(id , first_name , last_name , email , password , position , colleage , year , grade , accepted_flag)
values ('210006' , 'Amr' , 'Mostafa' , 'A.Mostafa@gmail.com' , 'A.Mostafa@' , 'hr' , 'Faculty of CS' , '2008' , 'B-' , 'true');

insert into BANK_EMPLOYEES(id , first_name , last_name , email , password , position , colleage , year , grade , accepted_flag)
values ('210007' , 'Salsabil' , 'Diab' , 'S.Diab@gmail.com' , 'S.Diab' , 'Accountant' , 'Faculty of CS' , '2007' , 'B' , 'false');

-------------------------------------------------------------------

insert into BANK_CLIENTS(id , first_name , last_name , email , password , phone_number)
values ('310000' , 'Fady' , 'Adel' , 'F.Adel@gmail.com' , 'F.Adel@' , '01281536575' );

insert into BANK_CLIENTS(id , first_name , last_name , email , password , phone_number)
values ('310001' , 'Mary' , 'Romany' , 'M.Romany@gmail.com' , 'M.Romany@' , '01091515469' );

insert into BANK_CLIENTS(id , first_name , last_name , email , password , phone_number)
values ('310002' , 'Adel' , 'Mena' , 'A.Mena@gmail.com' , 'A.Mena@' , '01296409676' );

insert into BANK_CLIENTS(id , first_name , last_name , email , password , phone_number)
values ('310003' , 'Romany' , 'Kerolos' , 'R.Kerolos@gmail.com' , 'R.Kerolos@' , '01097123210' );

insert into BANK_CLIENTS(id , first_name , last_name , email , password , phone_number)
values ('310004' , 'Dina' , 'Mostafa' , 'D.Mostafa@gmail.com' , 'D.Mostafa@' , '01222098712' );

insert into BANK_CLIENTS(id , first_name , last_name , email , password , phone_number)
values ('310005' , 'Shenoda' , 'Tharwat' , 'S.Tharwat@gmail.com' , 'S.Tharwat@' , '01012309890' );

insert into BANK_CLIENTS(id , first_name , last_name , email , password , phone_number)
values ('310006' , 'Kerolos' , 'Ali' , 'K.Ali@gmail.com' , 'K.Ali@' , '01181536575' );

insert into BANK_CLIENTS(id , first_name , last_name , email , password , phone_number)
values ('310007' , 'Bishoy' , 'Hany' , 'B.Hany@gmail.com' , 'B.Hany@' , '01191160546' );

insert into BANK_CLIENTS(id , first_name , last_name , email , password , phone_number)
values ('310008' , 'Maher' , 'Ahmed' , 'M.Ahmed@gmail.com' , 'M.Ahmed@' , '01196412376' );

-------------------------------------------------------------------

insert into bank_accounts (account_num , status , type , balance , year , month , day , client_id )
values('3100001' , 'open' , 'Fawery' , 300 ,2023 ,12 ,20 , '310000');

insert into bank_accounts (account_num , status , type , balance , year , month , day , client_id )
values('3100002' , 'open' , 'Investment' , 1300 ,2023 ,11 ,10 , '310000');

insert into bank_accounts (account_num , status , type , balance , year , month , day , client_id )
values('3100011' , 'open' , 'Fawery' , 200 ,2023 ,9 ,24 , '310001');

insert into bank_accounts (account_num , status , type , balance , year , month , day , client_id )
values('3100012' , 'closed' , 'Fawery' , 10 ,2023 ,10 ,24 , '310001');

insert into bank_accounts (account_num , status , type , balance , year , month , day , client_id )
values('3100021' , 'open' , 'Fawery' , 200 ,2023 ,9 ,24 , '310002');

insert into bank_accounts (account_num , status , type , balance , year , month , day , client_id )
values('3100022' , 'closed' , 'Investment' , 1110 ,2022 ,5 ,24 , '310002');

insert into bank_accounts (account_num , status , type , balance , year , month , day , client_id )
values('3100031' , 'open' , 'Fawery' , 250 ,2023 ,9 ,25 , '310003');

insert into bank_accounts (account_num , status , type , balance , year , month , day , client_id )
values('3100041' , 'open' , 'Investment' , 1250 ,2023 ,1 ,25 , '310004');

insert into bank_accounts (account_num , status , type , balance , year , month , day , client_id )
values('3100051' , 'closed' , 'Fawery' , 50 ,2024 ,1 ,25 , '310005');

insert into bank_accounts (account_num , status , type , balance , year , month , day , client_id )
values('3100061' , 'closed' , 'Investment' , 5000 ,2023 ,1 ,25 , '310006');

insert into bank_accounts (account_num , status , type , balance , year , month , day , client_id )
values('3100071' , 'open' , 'Fawery' , 250 ,2023 ,5 ,8 , '310007');

insert into bank_accounts (account_num , status , type , balance , year , month , day , client_id )
values('3100081' , 'open' , 'Investment' , 2250 ,2023 ,7 ,25 , '310008');

-------------------------------------------------------------------

insert into bank_transactions(transaction_id , sender_num , receiver_num , amount , year , month , day)
values ('10000' , NULL , '3100001' , 300 , 2023 ,12 ,20 );

insert into bank_transactions(transaction_id , sender_num , receiver_num , amount , year , month , day)
values ('10001' , NULL , '3100002' , 1300 , 2023 ,11 ,10 );

insert into bank_transactions(transaction_id , sender_num , receiver_num , amount , year , month , day)
values ('10002' , NULL , '3100011' , 200 , 2023 ,9 ,24 );

insert into bank_transactions(transaction_id , sender_num , receiver_num , amount , year , month , day)
values ('10003' , NULL , '3100012' , 10 , 2023 ,10 ,24 );

insert into bank_transactions(transaction_id , sender_num , receiver_num , amount , year , month , day)
values ('10004' , NULL , '3100021' , 200 , 2023 ,9 ,24 );

insert into bank_transactions(transaction_id , sender_num , receiver_num , amount , year , month , day)
values ('10005' , NULL , '3100022' , 1110 , 2022 ,5 ,24 );

insert into bank_transactions(transaction_id , sender_num , receiver_num , amount , year , month , day)
values ('10006' , NULL , '3100031' , 250 , 2023 ,9 ,25 );

insert into bank_transactions(transaction_id , sender_num , receiver_num , amount , year , month , day)
values ('10007' , NULL , '3100041' , 1250 , 2023 ,1 ,25 );

insert into bank_transactions(transaction_id , sender_num , receiver_num , amount , year , month , day)
values ('10008' , NULL , '3100051' , 50 , 2024 ,1 ,25 );

insert into bank_transactions(transaction_id , sender_num , receiver_num , amount , year , month , day)
values ('10009' , NULL , '3100061' , 5000 , 2023 ,1 ,25 );

insert into bank_transactions(transaction_id , sender_num , receiver_num , amount , year , month , day)
values ('1000A' , NULL , '3100071' , 250 , 2023 ,5 ,8 );

insert into bank_transactions(transaction_id , sender_num , receiver_num , amount , year , month , day)
values ('1000B' , NULL , '3100081' , 2250 , 2023 ,7 ,25 );

insert into bank_transactions(transaction_id , sender_num , receiver_num , amount , year , month , day)
values ('1000C' , '3100041' , NULL , 40 , 2023 , 1 , 26 );

insert into bank_transactions(transaction_id , sender_num , receiver_num , amount , year , month , day)
values ('1000D' , '3100071' , '3100081' , 140 , 2023 , 9 , 5 );

-------------------

-- 2023 / 01 / 26
UPDATE BANK_ACCOUNTS 
set balance = 1210
WHERE account_num = '3100041' ;

-- 2023 / 09 / 05
UPDATE BANK_ACCOUNTS 
set balance = 110
WHERE account_num = '3100071' ;

UPDATE BANK_ACCOUNTS 
set balance = 2390
WHERE account_num = '3100081' ;

-------------------------------------------------------------------