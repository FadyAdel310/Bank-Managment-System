create table BANK_CLIENTS (
  ID varchar2(6) primary key ,
  FIRST_NAME varchar2(8) NOT NULL ,
  LAST_NAME varchar2(8) NOT NULL ,
  EMAIL varchar2(30) NOT NULL unique ,
  PASSWORD varchar2(10) NOT NULL ,
  PHONE_NUMBER varchar2(11) NOT NULL unique
);

create table BANK_EMPLOYEES (
  ID varchar2(6) primary key ,
  FIRST_NAME varchar2(8) NOT NULL ,
  LAST_NAME varchar2(8) NOT NULL ,
  EMAIL varchar2(30) NOT NULL unique ,
  PASSWORD varchar2(10) NOT NULL ,
  POSITION varchar2(20) NOT NULL ,
  COLLEAGE varchar2(40) ,
  YEAR Number(4) ,
  GRADE varchar2(2) ,
  ACCEPTED_FLAG varchar2(5) NOT NULL
);

create table BANK_ADMINS (
  ID varchar2(6) primary key ,
  FIRST_NAME varchar2(8) NOT NULL ,
  LAST_NAME varchar2(8) NOT NULL ,
  EMAIL varchar2(30) NOT NULL unique ,
  PASSWORD varchar2(10) NOT NULL ,
);

create table BANK_ACCOUNTS (
  ACCOUNT_NUM varchar2(7) primary key ,
  STATUS varchar2(10) NOT NULL ,
  TYPE varchar2(25) ,
  BALANCE number(7,1) ,
  YEAR number(4) NOT NULL ,
  MONTH number(2) NOT NULL ,
  DAY number(2) NOT NULL , 
  CLIENT_ID varchar2(6) REFERENCES BANK_CLIENTS (ID) NOT NULL
);

create table BANK_TRANSACTIONS (
  SENDER_NUM varchar2(7) REFERENCES BANK_ACCOUNTS (ACCOUNT_NUM) ,
  RECEIVER_NUM varchar2(7) REFERENCES BANK_ACCOUNTS (ACCOUNT_NUM) ,
  TRANSACTION_ID varchar2(5) primary key ,
  AMOUNT NUMBER(7,1) NOT NULL ,
  YEAR number(4) NOT NULL ,
  MONTH number(2) NOT NULL ,
  DAY number(2) NOT NULL 
);