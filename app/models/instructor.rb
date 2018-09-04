class Instructor < ApplicationRecord
  belongs_to :user
  belongs_to :cohort
  belongs_to :course
end
