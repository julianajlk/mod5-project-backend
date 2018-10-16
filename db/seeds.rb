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

User.create(name: "Doug", email: "doug@email.com", organizationable_id: 1, organizationable_type: "Brand")
User.create(name: "Patti", email: "patti@email.com", organizationable_id: 1, organizationable_type: "Brand")
User.create(name: "Skeeter", email: "skeeter@email.com", organizationable_id: 2, organizationable_type: "Brand")
User.create(name: "Phil", email: "phil@email.com", organizationable_id: 3, organizationable_type: "Brand")
User.create(name: "Roger", email: "roger@email.com", organizationable_id: 1, organizationable_type: "Supplier")
User.create(name: "Beebe", email: "beebe@email.com", organizationable_id: 2, organizationable_type: "Supplier")
User.create(name: "Judy", email: "judy@email.com", organizationable_id: 2, organizationable_type: "Supplier")
User.create(name: "Theda", email: "theda@email.com", organizationable_id: 3, organizationable_type: "Supplier")

Garment.create(brand_id: 1, name: "Havana Trench Coat", image_url: "https://as1.ftcdn.net/jpg/01/97/44/26/500_F_197442683_ZqvLvKM8mt3keqzXdNHCZ8YNTq4fmJTC.jpg", category: "Outerwear", season: "Cruise 2019", location: "China", status: "1st Stock Sample", fabrication: "100% Cotton Washed Canvas", trim: "3 buttons, 1 main label, 1 size label, 1 hangtag", sizing: "XXS-XXL", measurement: "Body Length From Center Back Neck: 33 inches, Shell Inseam: 12 inches, Pocket: 5 inches, Elbow Patches Placement from shoulder: 2 inches", fit_comment: "Button holes be made 1/8 inch larger, as the Buttons have already been ordered", comment: "Wash approved as per 1st Factory Stock Sample")

Garment.create(brand_id: 2, name: "Dakota Skirt", image_url: "https://petiterepublic.files.wordpress.com/2010/11/000001753158.jpeg", category: "Bottoms", season: "Spring 2020", location: "Sri Lanka", status: "2nd Stock Sample", fabrication: "Silk Jacquard", trim: "1 invisible zipper, 1 main label, 1 size label, 1 hangtag", sizing: "S-L", measurement: "Body Length From Center Back Neck: 42 inches, Sleeve Opening: 12 inches", fit_comment: "Sleeve Length revised to be 33 1/4 inches", comment: "Please attach all buttons securely. Factory to test each button to ensure functionality")

Garment.create(brand_id: 3, name: "Rio Dress", image_url: "https://indigorchid.files.wordpress.com/2011/12/boat_dress_flat.jpg", category: "Dresses", season: "Spring 2020", location: "Bangladesh", status: "Showroom Sample", fabrication: "Cotton Poplin", trim: "8 buttons, 1 main label, 1 size label, 1 hangtag", sizing: "XS-XL", measurement: "Armhole Circumference: 16 inches, Across Shoulder: 21 inches, Sleeve Opening: 10 inches", fit_comment: "Reduce across shoulder, across back, and across front as pinned", comment: "Contrast stitching should be in black")
