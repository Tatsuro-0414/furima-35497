class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.integer :category_id , null: false
      t.integer :status_id , null: false
      t.text :explain, null: false
      t.integer :delivery_charge_id, null:false
      t.integer :until_shipping_id, null:false
      t.integer :price, null:false
      t.integer :prefecture_id, null:false
      

      t.timestamps
    end
  end
end
