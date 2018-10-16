class Brand < ApplicationRecord
  has_many :users, as: :organizationable
  has_many :garments
end
