class AddSuccessCardToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :success_card_id, :integer
  end
end
