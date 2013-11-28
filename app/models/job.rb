class Job < ActiveRecord::Base
	has_many :videos, :dependent => :delete_all
  has_many :success_cards, :dependent => :delete_all
	
	has_many :jobs, foreign_key: "category_id"
	belongs_to :category, :class_name => "Job"

	acts_as_taggable
end
