class PointBadge < ActiveRecord::Base
  has_many :user_point_badges
  has_many :users, through: :user_point_badges
  has_attached_file :picture, path: "/:class/:attachment/:id_partition/:style/:filename'",  url: ":s3_working_url", styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>'
  }

  after_save :update_users, if: :threshold_changed?

  private
  def update_users
    users_more = User.where("points >= ?", self.threshold)
    users_more.each do |user|
      user.point_badges << self
    end
    users_less = User.where("points < ?", self.threshold)
    users_less.each do |user|
      user.point_badges.delete(self)
    end
  end
end
