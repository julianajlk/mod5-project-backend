class Garment < ApplicationRecord
  belongs_to :brand
  has_one_attached :cover_upload
  has_many :garment_materials, dependent: :destroy
  has_many :materials, through: :garment_materials

  accepts_nested_attributes_for :materials
end
