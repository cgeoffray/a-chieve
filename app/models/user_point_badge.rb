class UserPointBadge < ActiveRecord::Base
  belongs_to :user
  belongs_to :point_badge
end
