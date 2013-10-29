class JobCategory < ActiveRecord::Migration
  def change
  	add_column :jobs, :category_id, :integer
  	add_column :jobs, :level, :integer
  end
end
