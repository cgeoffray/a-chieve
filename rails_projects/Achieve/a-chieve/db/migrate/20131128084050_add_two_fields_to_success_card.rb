class AddTwoFieldsToSuccessCard < ActiveRecord::Migration
  def change
    add_column :success_cards, :additional_training, :text
    add_column :success_cards, :awards, :text
  end
end
