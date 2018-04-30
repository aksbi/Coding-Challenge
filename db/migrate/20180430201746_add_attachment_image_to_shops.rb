class AddAttachmentImageToShops < ActiveRecord::Migration[5.2]
  def self.up
    change_table :shops do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :shops, :image
  end
end
