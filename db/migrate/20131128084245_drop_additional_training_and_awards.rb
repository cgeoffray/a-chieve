class DropAdditionalTrainingAndAwards < ActiveRecord::Migration
  def change
    drop_table :success_card_additional_trainings
    drop_table :success_card_awards
  end
end
