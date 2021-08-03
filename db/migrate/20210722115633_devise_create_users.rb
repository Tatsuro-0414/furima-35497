# frozen_string_literal: true

class DeviseCreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""
      t.string :nickname,            null: false 
      t.string :first_name_zenkaku,  null: false
      t.string :last_name_zenkaku,   null: false
      t.string :first_name_furigana, null: false
      t.string :last_name_furigana,  null: false
      t.date   :birth_date,             null: false
      # カラムの記述（カンマなど）をしっかりみる
      # マイグレーションフアイルの削除方法は、rails db:rollbackをしてから、rails d mmaigrate モデル名
      

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      # t.integer  :sign_in_count, default: 0, null: false
      # t.datetime :current_sign_in_at
      # t.datetime :last_sign_in_at
      # t.string   :current_sign_in_ip
      # t.string   :last_sign_in_ip

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at


      t.timestamps null: false
    end

    add_index :users, :email,                unique: true
    add_index :users, :reset_password_token, unique: true
    # add_index :users, :confirmation_token,   unique: true
    # add_index :users, :unlock_token,         unique: true
  end
end


# 7/26(月)エラー文
# ActiveRecord::PendingMigrationError
# Migrations are pending. To resolve this issue, run: rails db:migrate RAILS_ENV=development




# Status   Migration ID    Migration Name
# --------------------------------------------------
#   down    20210722115633  Devise create users

#   down = マイグレーションが実行出来ていない → マイグレーションのエラーになる（maigretion pendingになる（マイグレーションが保留中ですになる）
#   up =　マイグレーションが実行出来ている
    # rails db:rollbackをしたか、UPからdownになった

    # 7/26エラー文
    # 3つのテーブルを生成した
    # うち二つのテーブルは不要だと気がついた
    # ロールバックをした　三つのテーブル全て
    # この時、マイグレーションファイルの状態は全てdown
    # かつ、テーブルはシークエルプロに生成されている状態
    # 不用なテーブル二つのファイルを削除した　
    # サーバーを立ち上げ確認したところ、エラー→ユーザーテーブルのdown状態のマイグレーションファイルがあるから
    # じゃあ、マイグレーションすればよい
    # でも、エラ〜→すでにテーブルが生成されてしまっているから
    # これを解消するにはテーブル関連を作り直してあげる必要がある
    # resetコマンド→DB、テーブルを現在のマイグレーションファイルを参照してもうちど作り直す
    # 結果、ユーザーテーブルが際作成されて、マイグレーションファイルがupの状態になった

