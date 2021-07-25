class ShippingAddress < ApplicationRecord
  belonges_to :purchase

  validatable :purchase, presence: ture
  validatable :postal_code, presence: ture
  validatable :prefecture_id, presence: ture
  validatable :municipalities, presence: ture
  validatable :address, presence: ture
  validatable :building, presence: ture
  validatable :phone_number, presence: ture
 
  
end
