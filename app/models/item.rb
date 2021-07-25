class Item < ApplicationRecord

  validates :name, presence: true
  validates :name, presence: true
  validates :category_id, presence: true
  validates :status_id, presence: true
  validates :delivery_charge_id, presence: true
  validates :until_shipping_id, presence: true
  
  





belonges_to :user
has_one :purchase
end
