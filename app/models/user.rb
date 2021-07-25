class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


has_many :items
has_many :purchases


validates :name, presence: ture
validates :email, presence: ture
validates :encrypted_password, presence: ture
validatable :first_name_zenkaku, presence: ture
validatable :last_name_zenkaku, presence: ture
validatable :first_name_furigana, presence: ture
validatable :last_name_furigana, presence: ture
validatable :bithday, presence: ture

end
