class AddPictureToPointBadges < ActiveRecord::Migration
  def self.up
    add_attachment :point_badges, :picture
  end
  def self.down
    remove_attachment :point_badges, :picture
  end
end
