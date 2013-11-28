class SuccessCard < ActiveRecord::Base
  belongs_to :job

  has_many :success_card_additional_trainings, :dependent => :delete_all
  has_many :success_card_awards, :dependent => :delete_all

  accepts_nested_attributes_for :success_card_additional_trainings, :allow_destroy => true
  accepts_nested_attributes_for :success_card_awards, :allow_destroy => true

  has_attached_file :picture, styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>'
  }
end
