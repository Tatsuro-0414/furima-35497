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

-has_many: items
-has_many: purchases

## itemsテーブル

| Column               | Type            | Options                        |
| ------               | ----------      | ------------------------------ |
| user                 | references      | null: false, foreign_key: true |
｜name                 | string          | null: false,                   |
| explain              | text            | null: false,                   |
| category_id          | integer         | null: false,                   |
| status_id            | integer          | null: false,                  |
| delivery_charge_id      | integer         | null: false,                   |
| until_shipping_id       | integer         | null: false,                   |
| price                | integer         | null: false,                   |
| prefecture_id          | integer         | null: false,                   |
-belonges_to :user
-has_one :purchase

## purchases テーブル

| Column             | Type       | Options                        |
| -------            | ---------- | ------------------------------ |
| user               | references | null: false, foreign_key: true |
| item               | references | null: false, foreign_key: true |
-belonges_to :user
-belonges_to :item
-has_one :shipping_address

## shipping_addressテーブル

|Column              |Type         |Options                         |
|------------------  |------------ |-----------------------------   |
| purchase                 | references   | null: false, foreign_key: true|
| postal_code               | string      | null: false,                  |
| prefecture_id               | integer     | null: false,                  |
| municipalities            | string      | null: false,                  |
| address                   | string      | null: false,                  |
| building                  | string      |                               |
| phone_number              | string      | null: false,                  |

-belonges_to :purchase



7/25
エラー文(NameError)
undefined local variable or method `ture' for User (call 'User.connection' to establish a connection):Class (NameError)
Did you mean?  true

答えは、`tureのスペルミスだったので、tureに修正する。
Did you mean?  trueの意味は、undefined local variable or methodの意味はtrueで良いとう意味


エラー文 Migrations are pending. To resolve this issue, run: rails db:migrate RAILS_ENV=development
意味：マイグレーションが実行されていない。
     そもそもマイグレーションが実行出来ていない（rails db:migrate)
     マイグレーションの記述のエラー（アソシエーションを記述していた）
     

解決　アソシエーションの記述を削除し、モデルにアソシエーションを記述した



