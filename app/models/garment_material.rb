class GarmentMaterial < ApplicationRecord
  belongs_to :garment
  belongs_to :material
end
