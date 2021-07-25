class CreateShippingAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :shipping_addresses do |t|
      t.references :purchase  null: false, foreign_key: true|
      t.string :postal_code  null: false
      t.integer :prefecture_id  null: false    
      t.string  :municipalities  null: false 
      t.string :address  null: false 
      t.string :building  
      t.string :building  null: false 
      t.timestamps

      belonges_to :purchase
    end
  end
end
