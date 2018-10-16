class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :picture
      t.string :picture_thumb
      t.string :dob
      t.string :phone
      t.string :location
      t.string :position
      t.string :department

      t.integer :organizationable_id
      t.string :organizationable_type

      t.timestamps
    end

    add_index :users, [:organizationable_type, :organizationable_id]
  end
end
