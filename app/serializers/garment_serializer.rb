class GarmentSerializer < ActiveModel::Serializer
  attributes :id, :name, :image_url, :category, :season, :location, :status, :fabrication, :trim, :sizing, :measurement, :fit_comment, :comment
  belongs_to :brand
end
