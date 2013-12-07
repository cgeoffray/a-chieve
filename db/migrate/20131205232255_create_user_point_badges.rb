class CreateUserPointBadges < ActiveRecord::Migration
  def change
    create_table :user_point_badges, id: false do |t|
      t.references :user
      t.references :point_badge

      t.timestamps
    end
    add_index :user_point_badges, :user_id
    add_index :user_point_badges, :point_badge_id
  end
end
