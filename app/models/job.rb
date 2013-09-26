class Job < ActiveRecord::Base
	has_many :videos, :dependent => :delete_all
end
