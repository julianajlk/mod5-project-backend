class Material < ApplicationRecord
 belongs_to :supplier
 has_many :garment_materials, dependent: :destroy
 has_many :garments, through: :garment_materials
end
