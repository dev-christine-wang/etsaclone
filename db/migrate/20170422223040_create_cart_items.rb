class CreateCartItems < ActiveRecord::Migration[5.0]
  def change
    create_table :cart_items do |t|
      t.integer "cart_id", null: false
      t.integer "item_id", null: false
      t.integer "item_quantity", null: false
      t.timestamps
    end
  end
end
