class AddNameToSuccessCard < ActiveRecord::Migration
  def change
    add_column :success_cards, :name, :string
  end
end
