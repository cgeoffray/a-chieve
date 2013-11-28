class RemoveSuccessCardFromJobs < ActiveRecord::Migration
  def change
    remove_column :jobs, :success_card_id
  end
end
