class AddAttachmentImageToHeaders < ActiveRecord::Migration
  def self.up
    change_table :headers do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :headers, :image
  end
end
