class MaterialSerializer < ActiveModel::Serializer
  attributes :id, :name, :item_number, :category, :size, :quantity, :color, :usage, :price, :comment, :image_url
  has_many :garments
  belongs_to :supplier
end
