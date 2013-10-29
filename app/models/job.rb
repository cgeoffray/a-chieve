class Job < ActiveRecord::Base
  belongs_to :categories
	has_many :videos, :dependent => :delete_all
end
