class SupplierSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :map_url
  has_many :users, as: :organizationable
  has_many :materials
  has_many :garment_materials
  has_many :garments, through: :garment_materials
end
