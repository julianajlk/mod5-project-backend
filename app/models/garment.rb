class Garment < ApplicationRecord
  belongs_to :brand
  has_one_attached :cover_upload
end
