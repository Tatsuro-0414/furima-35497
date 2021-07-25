class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name, null: false
      t.text :explain, null: false
      t.integer :category_id, null: false
      t.integer :status_id, null: false
      t.integer :delivery_charge_id, null: false
      t.integer :until_shipping_id, null: false
      t.integer :price, null: false
      t.integer :prefecture_id, null: false

      t.timestamps
belonges_to :user
has_one :purchase
    end
  end
end
