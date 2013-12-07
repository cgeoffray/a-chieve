class AddJobIdToSuccessCard < ActiveRecord::Migration
  def change
    add_column :success_cards, :job_id, :integer
  end
end
