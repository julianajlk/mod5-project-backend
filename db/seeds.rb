# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Brand.create(name: "Ralph Lauren")
Brand.create(name: "Marc Jacobs")
Brand.create(name: "Tory Burch")

Supplier.create(name: "Buttondowns Forever")
Supplier.create(name: "Pants & All")
Supplier.create(name: "Wellmade Incorporated")

User.create(name: "Doug", organizationable_id: 1, organizationable_type: "Brand")
User.create(name: "Patti", organizationable_id: 1, organizationable_type: "Brand")
User.create(name: "Skeeter", organizationable_id: 2, organizationable_type: "Brand")
User.create(name: "Phil", organizationable_id: 3, organizationable_type: "Brand")
User.create(name: "Roger", organizationable_id: 1, organizationable_type: "Supplier")
User.create(name: "Beebe", organizationable_id: 2, organizationable_type: "Supplier")
User.create(name: "Judy", organizationable_id: 2, organizationable_type: "Supplier")
User.create(name: "Theda", organizationable_id: 3, organizationable_type: "Supplier")
