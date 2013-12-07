class CreateSuccessCardAdditionalTrainings < ActiveRecord::Migration
  def change
    create_table :success_card_additional_trainings do |t|
      t.integer :success_card_id
      t.string :training

      t.timestamps
    end
  end
end
