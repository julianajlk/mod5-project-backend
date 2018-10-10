class Supplier < ApplicationRecord
  has_many :users, as: :organizationable
end
