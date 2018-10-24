class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :about
      t.string :email
      t.string :file_upload
      t.string :dob
      t.string :phone
      t.string :location
      t.string :position
      t.string :department
      t.string :url

      t.integer :organizationable_id
      t.string :organizationable_type

      t.timestamps
    end

    add_index :users, [:organizationable_type, :organizationable_id]
  end
end
