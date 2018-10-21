class MaterialSerializer < ActiveModel::Serializer
  attributes :id, :name, :item_number, :category, :size, :quantity, :color, :usage, :price, :comment
  belongs_to :supplier
end
