class CreateGarments < ActiveRecord::Migration[5.2]
  def change
    create_table :garments do |t|
      t.string :name
      t.string :file_upload
      t.string :category
      t.string :season
      t.boolean :approved
      t.string :location
      t.string :status
      t.string :fabrication
      t.string :sizing
      # save as an array
      # t.string :sizing, array: true, default: []
      t.text :measurement
      t.text :fit_comment
      t.text :comment
      t.string :url
      t.string :materialsIds

      t.belongs_to :brand, foreign_key: true

      t.timestamps
    end
  end
end
