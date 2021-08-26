class PurchaseAddress

  include ActiveModel::Model
  attr_accessor :postal_code, :prefecture_id, :municipalities, :address, :building, :phone_number,:card_token,:user_id,:item_id
  


  with_options presence: true do
    validates :user_id
    validates :item_id
  
    validates :postal_code, format: {with: /\A[0-9]{3}-[0-9]{4}\z/, message: "is invalid. Include hyphen(-)"}
    VALID_PHONE_NUMBER_REGEX = /\A0(\d{1}[-(]?\d{4}|\d{2}[-(]?\d{3}|\d{3}[-(]?\d{2}|\d{4}[-(]?\d{1})[-)]?\d{4}\z|\A0[5789]0[-]?\d{4}[-]?\d{4}\z/
    validates :phone_number,format: { with: VALID_PHONE_NUMBER_REGEX }

    validates :postal_code
    validates :municipalities
    validates :address
    validates :phone_number
    validates :card_token
    

  end
  
  validates :prefecture_id, numericality: {other_than: 1, message: "can't be blank"}



  


  def save
    purchases = Purchase.create(user_id:user_id,item_id:item_id)
    ShippingAddress.create(postal_code: postal_code, prefecture_id: prefecture_id, municipalities: municipalities, address: address, building: building,phone_number: phone_number,purchases_id:purchases.id)
   
    
    # 購入履歴テーブルと発送先住所テーブルへ値を保存するための記述が必要

   
      # 寄付情報を保存し、変数donationに代入する
     
      # 住所を保存する
      # donation_idには、変数donationのidと指定する
      
  end


end

  

