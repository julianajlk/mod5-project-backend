class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :organizationable
  # :organizationable_id, :organizationable_type
  belongs_to :organizationable, polymorphic: true
end
