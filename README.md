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

| Column             | Type    | Options     |
| ------------------ | ------   | ----------- |
| nicname            | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |
| name(全角)　　　　   | string | null: false |
| name（カナ）        | string | null: false |
| Bithday            | string | null: false |

-has_many :Listings
-has_many :purchase

## Listings テーブル

| Column | Type            | Options                        |
| ------ | ----------      | ------------------------------ |
| user   | references      | null: false, foreign_key: true |
| image  | Active Storage  | null: false,                   |

-belonges_to :user

## purchases テーブル

| Column             | Type       | Options                        |
| -------            | ---------- | ------------------------------ |
| user               | references | null: false, foreign_key: true |
| price              | string     | null: false,                   |
| sales commission   | string     | null: false,                   |
| sales profut       | string     | null: false,                   |

-belonges_to :user
