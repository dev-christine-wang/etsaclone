class AddAttachmentImageToItems < ActiveRecord::Migration
  def self.up
    change_table :items do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :items, :image
  end
end
