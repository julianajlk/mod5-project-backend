class GarmentSerializer < ActiveModel::Serializer
  attributes :id, :name, :url, :category, :season, :approved, :location, :status, :fabrication, :sizing, :measurement, :fit_comment, :comment
  has_many :materials
  belongs_to :brand

end
