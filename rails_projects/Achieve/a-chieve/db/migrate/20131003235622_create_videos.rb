class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :title
      t.text :description
      t.text :video_url
      t.integer :job_id
 
      t.timestamps
    end
  end
end
