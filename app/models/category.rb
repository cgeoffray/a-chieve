class Category < ActiveRecord::Base
  has_one :video
  has_many :jobs
end
