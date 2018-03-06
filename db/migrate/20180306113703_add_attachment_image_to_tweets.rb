class AddAttachmentImageToTweets < ActiveRecord::Migration[5.1]
  def self.up
    change_table :tweets do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :tweets, :image
  end
end
