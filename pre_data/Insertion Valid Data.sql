insert into bank_transactions(transaction_id , sender_num , receiver_num , amount , year , month , day)
values ('10000' , NULL , '3100001' , 4 , 2023 , 12 , 25 );

insert into bank_transactions(transaction_id , sender_num , receiver_num , amount , year , month , day)
values ('10001' , '3100041' , NULL , 40 , 2023 , 1 , 26 );

insert into bank_transactions(transaction_id , sender_num , receiver_num , amount , year , month , day)
values ('10002' , '3100071' , '3100081' , 140 , 2023 , 9 , 5 );

insert into bank_transactions(transaction_id , sender_num , receiver_num , amount , year , month , day)
values ('10003' , '3100002' , '3100021' , 30 , 2024 , 1 , 1 );

select * from bank_transactions;
DELETE FROM bank_transactions WHERE transaction_id = '10002';