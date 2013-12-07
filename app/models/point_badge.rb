class PointBadge < ActiveRecord::Base
  has_many :user_point_badges
  has_many :users, through: :user_point_badges
  has_attached_file :picture, path: "/:class/:attachment/:id_partition/:style/:filename'",  url: ":s3_working_url", styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>'
  }

  after_create :update_users

  private
  def update_users

  end
end
