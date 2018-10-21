class Supplier < ApplicationRecord
  has_many :users, as: :organizationable
  has_many :materials
  has_many :garments, through: :materials
  has_many :garment_materials, through: :materials
end
