class CreateSuppliers < ActiveRecord::Migration[5.2]
  def change
    create_table :suppliers do |t|
      t.string :name
      t.string :location
      t.string :map_url
      t.string :phone
      t.integer :employees
      t.integer :established
      t.timestamps
    end
  end
end
