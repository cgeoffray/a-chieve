class Job < ActiveRecord::Base
	has_many :videos, :dependent => :delete_all
	has_many :jobs, :as => :category
	belongs_to :category, :class_name => "Job"
end
