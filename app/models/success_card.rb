class SuccessCard < ActiveRecord::Base
  belongs_to :job

  has_attached_file :picture, path: "/:class/:attachment/:id_partition/:style/:filename'",  url: ":s3_working_url", styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>'
  }
end
