class Course < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  validates_presence_of :title, :details, :total_hours

  has_many :cohorts, dependent: :destroy
  has_many :instructors
  has_many :students, :through => :cohorts

  accepts_nested_attributes_for :cohorts, allow_destroy: true

end
