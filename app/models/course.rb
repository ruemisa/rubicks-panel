class Course < ApplicationRecord
  # Friendly URLs
  extend FriendlyId
  friendly_id :title, use: :slugged

  # Data validation
  validates_presence_of :title, :details, :total_hours
  validates :title, length: { minimum: 8, maximum: 80 }
  validates :details, length: { minimum: 10, maximum: 500 }
  
  # Associations
  has_many :cohorts, dependent: :destroy
  has_many :instructors, :through => :cohorts, dependent: :destroy # TODO: find a way to fix this up so that it will just nullify rather than destroy record
  has_many :students, :through => :cohorts, dependent: :destroy # Same 

  accepts_nested_attributes_for :cohorts, allow_destroy: true

end
