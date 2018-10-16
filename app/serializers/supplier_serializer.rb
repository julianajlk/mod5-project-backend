class SupplierSerializer < ActiveModel::Serializer
  attributes :id, :name, :location
  has_many :users, as: :organizationable
end
