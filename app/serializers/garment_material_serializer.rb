class GarmentMaterialSerializer < ActiveModel::Serializer
  attributes :id, :garment_id, :material_id
  belongs_to :garment
  belongs_to :material
end
