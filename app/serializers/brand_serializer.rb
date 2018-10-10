class BrandSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :users, as: :organizationable
end
