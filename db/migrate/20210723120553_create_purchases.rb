class CreatePurchases < ActiveRecord::Migration[6.0]
  def change
    create_table :purchases do |t|
      t.references :user null: false, foreign_key: true
      t.references :item  null: false, foreign_key: true

      t.timestamps
belonges_to :user
belonges_to :item
has_one :shipping_address
    end
  end
end
