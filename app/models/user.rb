class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


has_many :items
has_many :purchases


validates :nickname, presence: true
validates :email, presence: true
validates :encrypted_password, presence: true
validates :first_name_zenkaku, presence: true
validates :last_name_zenkaku, presence: true
validates :first_name_furigana, presence: true
validates :last_name_furigana, presence: true
validates :birth_date, presence: true
end
