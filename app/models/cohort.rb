class Cohort < ApplicationRecord
  # For friendly URLs
  extend FriendlyId
  friendly_id :name, use: :slugged
  
  # Data Validation
  validates_presence_of :name, :start_date, :end_date

  # Association
  belongs_to :course
  has_one :instructor, dependent: :nullify
  has_many :students, dependent: :nullify

end
