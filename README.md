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
| email                  |  string           | null: false,unique: ture |
| encrypted_password     | string            | null: false |
| first_name(zenkaku)    | string            | null: false |
| last_name(zenkaku)     | string            | null: false |
| first_name（furigana）  | string            | null: false |
| last_name（furigana）    | string            | null: false|
| bithday                  | date             | null: false |

-has_many: listings
-has_many: purchase

## itemテーブル

| Column               | Type            | Options                        |
| ------               | ----------      | ------------------------------ |
| user                 | references      | null: false, foreign_key: true |
｜name                 | string          | null: false,                   |
| explain              | text            | null: false,                   |
| category             | string          | null: false,                   |
| status               | string          | null: false,                   |
 


-belonges_to :user

## purchases テーブル

| Column             | Type       | Options                        |
| -------            | ---------- | ------------------------------ |
| user               | references | null: false, foreign_key: true |
| price              | string     | null: false,                   |
| sales commission   | string     | null: false,                   |
| sales profut       | string     | null: false,                   |
| item               | references | null:vfalse, foreign_key: true |
-belonges_to :user

## shipping addressテーブル

|Column              |Type         |Options                         |
|------------------  |------------ |-----------------------------   |
| purchases                 | refernces   | null: false, foreign_key: true|
| postal_code               | string      | null: false,                  |
| active_hash               | integer     | null: false,                  |
| municipalities            | string      | null: false,                  |
| address                   | string      | null: false,                  |
| building                  | string      |                               |
| phone_number              | string      | null: false,                  |
| delivery_change_burden    | string      | null: false,                  |
| shipping_area             | string      | null: false,                  |
| shipping_days             | string      | null: false,                  |
| price                     | string      | null: false,                  |


-belonges_to :user
