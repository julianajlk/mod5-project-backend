class BrandSerializer < ActiveModel::Serializer
  attributes :id, :name, :location
  has_many :users, as: :organizationable
  has_many :garments
  has_many :garment_materials
  has_many :materials, through: :garment_materials
end
