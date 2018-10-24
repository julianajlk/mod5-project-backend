class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :about, :email, :url, :file_upload, :dob, :phone, :location, :position, :department, :organizationable
  # :organizationable_id, :organizationable_type
  belongs_to :organizationable, polymorphic: true
end
