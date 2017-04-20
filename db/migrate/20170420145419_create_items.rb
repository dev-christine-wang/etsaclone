class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.integer "user_id", null: false
      t.string "name", null: false
      t.text "description", null: false
      t.integer "price", null: false
      t.string "category", null: false
      t.integer "quantity", null: false
      t.timestamps
    end
  end
end
