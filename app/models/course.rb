class Course < ApplicationRecord
  # Friendly URLs
  extend FriendlyId
  friendly_id :title, use: :slugged

  # Data validation
  validates_presence_of :title, :details, :total_hours

  has_many :cohorts, dependent: :destroy
  has_many :instructors, :through => :cohorts, dependent: :nullify
  has_many :students, :through => :cohorts, dependent: :nullify

  accepts_nested_attributes_for :cohorts, allow_destroy: true

end
