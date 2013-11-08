class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :watched_jobs
  belongs_to :role
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  def watched(job_id)
    return WatchedJob.exists?(user_id: self.id, job_id: job_id)
  end
end
