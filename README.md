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
| first_name_zenkaku    | string            | null: false |
| last_name_zenkaku     | string            | null: false |
| first_name_furigana  | string            | null: false |
| last_name_furigana    | string            | null: false|
| bithday                  | date             | null: false |

-has_many: listings
-has_many: purchases

## itemテーブル

| Column               | Type            | Options                        |
| ------               | ----------      | ------------------------------ |
| user                 | references      | null: false, foreign_key: true |
｜name                 | string          | null: false,                   |
| explain              | text            | null: false,                   |
| category_id          | string          | null: false,                   |
| status_id            | string          | null: false,                   |
| price                | string          | null: false,                   |

-belonges_to :shipping_address
 


-belonges_to :user

## purchases テーブル

| Column             | Type       | Options                        |
| -------            | ---------- | ------------------------------ |
| user               | references | null: false, foreign_key: true |
| item               | references | null: false, foreign_key: true |
-belonges_to :user
-belonges_to :item

## shipping addressテーブル

|Column              |Type         |Options                         |
|------------------  |------------ |-----------------------------   |
| purchases                 | refernces   | null: false, foreign_key: true|
| postal_code               | string      | null: false,                  |
| municipalities            | string      | null: false,                  |
| address                   | string      | null: false,                  |
| building                  | string      |                               |
| phone_number              | string      | null: false,                  |

-belonges_to :user
