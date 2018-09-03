class Cohort < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  validates_presence_of :name, :start_date, :end_date


  belongs_to :course
  has_one :instructor
  has_many :students

end
