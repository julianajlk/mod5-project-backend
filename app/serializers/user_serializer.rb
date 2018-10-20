class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :url, :file_upload, :picture_thumb, :dob, :phone, :location, :position, :department, :organizationable
  # :organizationable_id, :organizationable_type
  belongs_to :organizationable, polymorphic: true
end
