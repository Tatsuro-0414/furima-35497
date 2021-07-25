class Purchase < ApplicationRecord
  belonges_to :user
  belonges_to :item
  has_one :shipping_address

  validatable :user, presence: ture
  validatable :item, presence: ture
  
  
end
