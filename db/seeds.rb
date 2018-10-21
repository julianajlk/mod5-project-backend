# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Brand.create(name: "Ralph Lauren", location: "New York, NY")
Brand.create(name: "Marc Jacobs", location: "New York, NY")
Brand.create(name: "Tory Burch", location: "Los Angeles, CA")

Supplier.create(name: "Buttondowns Forever", location: "China")
Supplier.create(name: "Pants & All", location: "Sri Lanka")
Supplier.create(name: "Wellmade Incorporated", location: "Bangladesh")

User.create(name: "Candice", email: "candice.hernandez@example.com", url: "https://randomuser.me/api/portraits/women/30.jpg", picture_thumb: "https://randomuser.me/api/portraits/thumb/women/30.jpg", dob: "1966-10-23", phone: "(518)-401-2341", location: "Los Angeles, CA", position: "Designer", department: "Design", organizationable_id: 1, organizationable_type: "Brand")

User.create(name: "Ribca", email: "ribca.vieira@example.com", url: "https://randomuser.me/api/portraits/men/42.jpg", picture_thumb: "https://randomuser.me/api/portraits/thumb/men/42.jpg", dob: "1950-06-08", phone: "(461)715-3032", location: "USA", position: "Technical Designer", department: "Product Development", organizationable_id: 2, organizationable_type: "Brand")

User.create(name: "Frederik", email: "frederik.christensen@example.com", url: "https://randomuser.me/api/portraits/men/41.jpg", picture_thumb: "https://randomuser.me/api/portraits/thumb/men/41.jpg", dob: "1958-11-30", phone: "(310)345-3890", location: "Sweden", position: "Fabric Manager", department: "Design", organizationable_id: 3, organizationable_type: "Brand")

User.create(name: "Christl", email: "christl.grund@example.com", url: "https://randomuser.me/api/portraits/women/57.jpg", picture_thumb: "https://randomuser.me/api/portraits/thumb/women/57.jpg", dob: "1986-10-27", phone: "(510)583-2346", location: "New York, NY", position: "Senior Designer", department: "Design", organizationable_id: 1, organizationable_type: "Supplier")

User.create(name: "Roger", email: "roger.berger@example.com", url: "https://randomuser.me/api/portraits/men/14.jpg", picture_thumb: "https://randomuser.me/api/portraits/thumb/men/14.jpg", dob: "1960-09-15", phone: "(150)743-5763", location: "China", position: "Quality Control Manager", department: "Production", organizationable_id: 2, organizationable_type: "Supplier")

User.create(name: "Jenifer", email: "jenifer.deveen@example.com", url: "https://randomuser.me/api/portraits/women/95.jpg", picture_thumb: "https://randomuser.me/api/portraits/thumb/women/95.jpg", dob: "1996-11-05", phone: "(009)183-3862", location: "Florence, Italy", position: "Fabric Manager", department: "Fabric Reasearch and Development", organizationable_id: 3, organizationable_type: "Supplier")


Garment.create(brand_id: 1, name: "Havana Trench Coat", url: "https://as1.ftcdn.net/jpg/01/97/44/26/500_F_197442683_ZqvLvKM8mt3keqzXdNHCZ8YNTq4fmJTC.jpg", category: "Outerwear", season: "Cruise 2019", location: "China", status: "1st Stock Sample", fabrication: "100% Cotton Washed Canvas", trim_button: 3, trim_label: 1, trim_zipper: 1, trim_hangtag: 1, sizing: "XXS-XXL", measurement: "Body Length From Center Back Neck: 33 inches, Shell Inseam: 12 inches, Pocket: 5 inches, Elbow Patches Placement from shoulder: 2 inches", fit_comment: "Button holes be made 1/8 inch larger, as the Buttons have already been ordered", comment: "Wash approved as per 1st Factory Stock Sample")

Garment.create(brand_id: 2, name: "Dakota Skirt", url: "https://petiterepublic.files.wordpress.com/2010/11/000001753158.jpeg", category: "Bottoms", season: "Spring 2020", location: "Sri Lanka", status: "2nd Stock Sample", fabrication: "Silk Jacquard", trim_button: 8, trim_label: 1, trim_zipper: 2, trim_hangtag: 1, sizing: "S-L", measurement: "Body Length From Center Back Neck: 42 inches, Sleeve Opening: 12 inches", fit_comment: "Sleeve Length revised to be 33 1/4 inches", comment: "Please attach all buttons securely. Factory to test each button to ensure functionality")

Garment.create(brand_id: 3, name: "Rio Dress", url: "https://indigorchid.files.wordpress.com/2011/12/boat_dress_flat.jpg", category: "Dresses", season: "Spring 2020", location: "Bangladesh", status: "Showroom Sample", fabrication: "Cotton Poplin", trim_button: 12, trim_label: 1, trim_zipper: 0, trim_hangtag: 1, sizing: "XS-XL", measurement: "Armhole Circumference: 16 inches, Across Shoulder: 21 inches, Sleeve Opening: 10 inches", fit_comment: "Reduce across shoulder, across back, and across front as pinned", comment: "Contrast stitching should be in black")

Material.create(supplier_id: 1, name: "Main Label", item_number: "1230", category: "trim", size: "L: 2 15/16 x W: 9/16 inches", quantity: 1, color: "Navy ground with silver letters", usage: "At Center Back Neck, stitched 4 sides", price: "$0.5/EACH", comment: "N/A")
Material.create(supplier_id: 2, name: "Washed Canvas", item_number: "1231", category: "fabric", size: "43 inches", quantity: 1, color: "PFD", usage: "shell and seam binding", comment: "100% Cotton")
Material.create(supplier_id: 3, name: "Silver Invisible Zipper", item_number: "1232", category: "trim", size: "12 inches", quantity: 1, color: "Black", usage: "Side seam", comment: "Zipper should be placed 2 inches from waist")
Material.create(supplier_id: 1, name: "Corozo Button", item_number: "1233", category: "trim", size: "", quantity: 1, color: "Caramel", usage: "At center front, at each cuff", comment: "1 extra button")
Material.create(supplier_id: 2, name: "Silk Charmeuse", item_number: "1234", category: "fabric", size: "43 inches", quantity: 1, color: "Off White", usage: "Shell and lining", comment: "100% silk")
