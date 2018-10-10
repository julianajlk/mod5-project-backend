class Brand < ApplicationRecord
  has_many :users, as: :organizationable
end
