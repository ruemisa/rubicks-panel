class Admin < ApplicationRecord
  has_one :user, as: :meta
end
