class User < ActiveRecord::Base
  has_many :user_point_badges
  has_many :point_badges, through: :user_point_badges
  has_one :point_badge, foreign_key: "next_point_badge_id"
  has_many :watched_jobs
  belongs_to :role

  before_update :check_point_badges
  before_create :find_first_badge

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable
  def watched(job_id)
    return WatchedJob.exists?(user_id: self.id, job_id: job_id)
  end

  private

  def find_first_badge
    self.next_point_badge = PointBadge.minimum("treshold")
  end

  def check_point_badges
    if(self.points_changed?)
      if(self.next_point_badge.threshold <= self.points)
        self.point_badges << self.next_point_badge
        self.next_point_badge = PointBadge.where("threshold > ?", self.next_point_badge.threshold).order(threshold: :asc).limit(1).first
      end
    end
  end

end
