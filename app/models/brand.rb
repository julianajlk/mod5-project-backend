class Brand < ApplicationRecord
  has_many :users, as: :organizationable
  has_many :garments
  has_many :materials, through: :garments
  has_many :garment_materials, through: :garments
end
