# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# テーブル設計

## users テーブル

| Column                 | Type              | Options     |
| ------------------    | ------             | ----------- |
| nickname                | string           | null: false |
| email                  | unique: ture      | null: false, |
| encrypted_password     | string            | null: false |
| First_name(zenkaku)　  | string            | null: false |
| Last_name(zenkaku)　　  | string            | null: false |
| First_name（furigana）  | string            | null: false |
| Last_name（furigana）    | string            | null: false|
| bithday                  | date             | null: false |

-has_many: listings
-has_many: purchase

## listingsテーブル

| Column               | Type            | Options                        |
| ------               | ----------      | ------------------------------ |
| user                 | references      | null: false, foreign_key: true |
｜product              | string          | null: false,                   |
| product_description  | text            | null: false,                   |
 


-belonges_to :user

## purchases テーブル

| Column             | Type       | Options                        |
| -------            | ---------- | ------------------------------ |
| user               | references | null: false, foreign_key: true |
| price              | string     | null: false,                   |
| sales commission   | string     | null: false,                   |
| sales profut       | string     | null: false,                   |

-belonges_to :user

## shipping addressテーブル

|Column              |Type         |Options                        |
|------------------  |------------ |-----------------------------  |
| user                | refernces   | null: false, foreign_key: true|
| postal code         | string      | null: false,                  |
| pretectares         | string      | null: false,                  |
| municipalities      | string      | null: false,                  |
| address             | string      | null: false,                  |
| building            | string      | null: false,                  |
| phone number        | string      | null: false,                  |

-belonges_to :user
