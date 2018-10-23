class CreateGarmentMaterials < ActiveRecord::Migration[5.2]
  def change
    create_table :garment_materials do |t|
      # add below after graduation
      # t.integer :quantity
      # t.text :comment
      t.belongs_to :material, foreign_key: true
      t.belongs_to :garment, foreign_key: true

      t.timestamps
    end
  end
end
