class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :delivery_charge
  belongs_to :prefecture
  belongs_to :status
  belongs_to :until_shipping








end

