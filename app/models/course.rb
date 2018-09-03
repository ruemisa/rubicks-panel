class Course < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  validates_presence_of :title, :details, :total_hours

  has_many :cohorts 
  has_many :instructors
  has_many :students, :through => :cohorts

end
