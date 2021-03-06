class Student < ApplicationRecord
  # Friendly URLs
  extend FriendlyId
  friendly_id :first_name, use: :slugged
  
  # Data Validation
  validates_presence_of :first_name, :last_name, :age, :education
  validates :age, numericality: { greater_than: 18, less_than: 150, only_integer: true }


  # Associations
  belongs_to :cohort
  belongs_to :course
  # For devise user association
  has_one :user, as: :meta

  def full_name 
    self.first_name + ' ' + self.last_name
  end
end
