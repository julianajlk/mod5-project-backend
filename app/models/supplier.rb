class Supplier < ApplicationRecord
  has_many :users, as: :organizationable
  has_many :materials
end
