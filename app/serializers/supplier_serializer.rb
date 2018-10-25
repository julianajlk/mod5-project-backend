class SupplierSerializer < ActiveModel::Serializer
  attributes :id, :name, :category, :location, :map_url, :phone, :employees, :established
  has_many :users, as: :organizationable
  has_many :materials
  has_many :garment_materials
  has_many :garments, through: :garment_materials
end
