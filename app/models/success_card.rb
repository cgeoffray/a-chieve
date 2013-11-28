class SuccessCard < ActiveRecord::Base
  belongs_to :job

  has_many :succes_card_additional_training, :dependent => :delete_all
  has_many :success_card_awards, :dependent => :delete_all

  has_attached_file :picture, styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>'
  }
end
