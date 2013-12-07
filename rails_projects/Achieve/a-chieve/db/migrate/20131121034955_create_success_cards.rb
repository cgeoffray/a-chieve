class CreateSuccessCards < ActiveRecord::Migration
  def change
    create_table :success_cards do |t|
      t.string :job_title
      t.integer :income
      t.string :schooling
      t.text :skills
      t.text :fun_fact
      t.text :challenges
      t.text :find_out_more

      t.timestamps
    end
  end
end
