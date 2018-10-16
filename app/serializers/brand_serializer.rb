class BrandSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :users, as: :organizationable
  # has_many :garments
end
