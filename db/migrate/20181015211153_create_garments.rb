class CreateGarments < ActiveRecord::Migration[5.2]
  def change
    create_table :garments do |t|
      t.string :name
      # t.integer :brand_id
      t.string :image_url
      t.string :category
      t.string :season
      t.string :location
      t.string :status
      t.string :fabrication
      t.integer :trim_button
      t.integer :trim_label
      t.integer :trim_zipper
      t.integer :trim_hangtag
      t.string :sizing
      t.text :measurement
      t.text :fit_comment
      t.text :comment
      t.belongs_to :brand, foreign_key: true

      t.timestamps
    end
  end
end
