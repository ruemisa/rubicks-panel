class Course < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged


  has_many :cohorts 
  has_many :instructors
  has_many :students, :through => :cohorts

end
