class BrandSerializer < ActiveModel::Serializer
  attributes :id, :name, :location
  has_many :users, as: :organizationable
  has_many :garments
end
