class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.integer "item_id", null: false
      t.integer "user_id", null: false
      t.integer "rating", null: false
      t.text "description"
      t.timestamps
    end
  end
end
