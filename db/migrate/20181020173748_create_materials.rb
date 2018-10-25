class CreateMaterials < ActiveRecord::Migration[5.2]
  def change
    create_table :materials do |t|
      t.string :name
      t.integer :item_number
      t.string :category
      t.string :size
      t.integer :quantity
      t.string :color
      t.text :usage
      t.string :price
      t.text :comment
      t.string :image_url
      t.belongs_to :supplier, foreign_key: true
      t.timestamps
    end
  end
end
