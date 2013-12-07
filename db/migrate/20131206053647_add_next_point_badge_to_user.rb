class AddNextPointBadgeToUser < ActiveRecord::Migration
  def change
    add_column :users, :next_point_badge_id, :integer
  end
end
