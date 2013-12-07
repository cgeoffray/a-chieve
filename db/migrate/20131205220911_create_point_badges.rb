class CreatePointBadges < ActiveRecord::Migration
  def change
    create_table :point_badges do |t|
      t.string :name
      t.integer :threshold

      t.timestamps
    end
  end
end
