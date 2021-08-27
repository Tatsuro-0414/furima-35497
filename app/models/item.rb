class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :delivery_charge
  belongs_to :prefecture
  belongs_to :status
  belongs_to :until_shipping
  belongs_to :user
  has_one_attached :image
  has_one :purchase

  with_options numericality: { other_than: 1 , message: "can't be blank"} do
  validates :category_id
  validates :delivery_charge_id
  validates :status_id
  validates :until_shipping_id
  validates :prefecture_id
  end

  validates :price, numericality: { only_integer: true, greater_than_or_equal_to: 300, less_than_or_equal_to: 9_999_999 }

  
  


  with_options presence: true do
    validates :category_id
    validates :status_id
    validates :explain
    validates :delivery_charge_id
    validates :until_shipping_id
    validates :price
    validates :prefecture_id
    validates :name
    validates :image

  

   
   
      
           
  
  
end
  end
