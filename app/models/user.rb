class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  has_many :items
  # has_many :purchases
  # ９行目については、購入機能で必要なアソシエーションになりますので、記述しております。

  with_options presence: true do
    validates :nickname
    

    
    with_options format: { with: /\A[ぁ-んァ-ヶ一-龥々ー]+\z/, message: '漢字・ひらがな・カタカナ以外では登録できない' } do
      validates :first_name_zenkaku
      validates :last_name_zenkaku
    end

    with_options format: { with: /\A[\p{katakana}\p{blank}ー－]+\z/, message: 'はカタカナで入力して下さい。'} do
      validates :first_name_furigana
      validates :last_name_furigana
    end

    validates :birth_date 
  end

  PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i.freeze
  validates_format_of :password, with: PASSWORD_REGEX, message: 'には英字と数字の両方を含めて設定してください' 

end
