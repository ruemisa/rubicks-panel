class Instructor < ApplicationRecord
  belongs_to :cohort
  belongs_to :course

  has_one :user, as: :meta
end
