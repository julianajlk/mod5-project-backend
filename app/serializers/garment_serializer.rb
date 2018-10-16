class GarmentSerializer < ActiveModel::Serializer
  attributes :id, :name, :image_url, :category, :season, :location, :status, :fabrication, :trim_button, :trim_zipper, :trim_label, :trim_hangtag, :sizing, :measurement, :fit_comment, :comment
  belongs_to :brand
end
