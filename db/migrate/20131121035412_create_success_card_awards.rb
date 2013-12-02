class CreateSuccessCardAwards < ActiveRecord::Migration
  def change
    create_table :success_card_awards do |t|
      t.integer :success_card_id
      t.string :award

      t.timestamps
    end
  end
end
