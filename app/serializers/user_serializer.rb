class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :picture_thumb, :dob, :phone, :location, :position, :department, :organizationable
  # :organizationable_id, :organizationable_type
  belongs_to :organizationable, polymorphic: true
end
