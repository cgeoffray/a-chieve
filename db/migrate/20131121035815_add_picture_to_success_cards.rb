class AddPictureToSuccessCards < ActiveRecord::Migration
  def self.up
    add_attachment :success_cards, :picture
  end
  def self.down
    remove_attachment :success_cards, :picture
  end
end
