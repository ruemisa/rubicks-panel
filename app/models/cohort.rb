class Cohort < ApplicationRecord
  # For friendly URLs
  extend FriendlyId
  friendly_id :name, use: :slugged
  
  # Data Validation
  validates_presence_of :name, :start_date, :end_date
  validates :name, length: { minimum: 8, maximum: 80 }


  # Associations
  belongs_to :course
  has_one :instructor, dependent: :destroy
  has_many :students, dependent: :destroy

end
