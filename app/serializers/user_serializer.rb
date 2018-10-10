class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :organizationable_id, :organizationable_type
  belongs_to :organizationable, polymorphic: true
end
