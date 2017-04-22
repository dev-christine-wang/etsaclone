class CreateCarts < ActiveRecord::Migration[5.0]
  def change
    create_table :carts do |t|
      t.integer "user_id", null: false
      t.boolean "purchased", null: false, default: false
      t.timestamps
    end
  end
end
