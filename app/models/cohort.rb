class Cohort < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged


  belongs_to :course
  has_one :instructor
  has_many :students

end