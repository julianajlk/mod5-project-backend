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

Supplier.create(name: "Buttondowns Forever", location: "Shenzhen, China", map_url: "https://maps.googleapis.com/maps/api/staticmap?center=Shenzhen&zoom=13&scale=1&size=300x450&maptype=roadmap&key=AIzaSyBTd4sjbFbrazbXX0xgF3pYCf-KY1zfM40&format=png&visual_refresh=true" )
Supplier.create(name: "Pants & All", location: "Blumenau, Brazil", map_url: "https://maps.googleapis.com/maps/api/staticmap?center=Blumenau&zoom=13&scale=1&size=300x450&maptype=roadmap&key=AIzaSyBTd4sjbFbrazbXX0xgF3pYCf-KY1zfM40&format=png&visual_refresh=true")
Supplier.create(name: "Wellmade Inc", location: "Dhaka, Bangladesh", map_url: "https://maps.googleapis.com/maps/api/staticmap?center=Dhaka,+Bangladesh&zoom=13&scale=1&size=300x450&maptype=roadmap&key=AIzaSyBTd4sjbFbrazbXX0xgF3pYCf-KY1zfM40&format=png&visual_refresh=true")
Supplier.create(name: "XYZippers", location: "Los Angeles, USA", map_url: "https://maps.googleapis.com/maps/api/staticmap?center=Los+Angeles&zoom=13&scale=1&size=300x450&maptype=roadmap&key=AIzaSyBTd4sjbFbrazbXX0xgF3pYCf-KY1zfM40&format=png&visual_refresh=true")

User.create(name: "Marcela", about: "@marcelaelaela", email: "marcela.vieira@example.com", url: "https://randomuser.me/api/portraits/women/11.jpg", dob: "1950-06-08", phone: "(461)715-3032", location: "USA", position: "Technical Designer", department: "Product Development", organizationable_id: 1, organizationable_type: "Brand")

User.create(name: "Candice", about: "Graphic Designer learning to code", email: "candice.hernandez@example.com", url: "https://randomuser.me/api/portraits/women/30.jpg", dob: "1966-10-23", phone: "(518)-401-2341", location: "Los Angeles, CA", position: "Designer", department: "Design", organizationable_id: 2, organizationable_type: "Brand")

User.create(name: "Frederik", about: "@iamfrederik", email: "frederik.christensen@example.com", url: "https://randomuser.me/api/portraits/men/41.jpg", dob: "1958-11-30", phone: "(310)345-3890", location: "Sweden", position: "Fabric Manager", department: "Design", organizationable_id: 3, organizationable_type: "Brand")

User.create(name: "Christl", about: "@chrischris", email: "christl.grund@example.com", url: "https://randomuser.me/api/portraits/women/57.jpg", dob: "1986-10-27", phone: "(510)583-2346", location: "New York, NY", position: "Senior Designer", department: "Design", organizationable_id: 1, organizationable_type: "Supplier")

User.create(name: "Roger", about: "Former attorney, find me @rogerisroger", email: "roger.berger@example.com", url: "https://randomuser.me/api/portraits/men/14.jpg", dob: "1960-09-15", phone: "(150)743-5763", location: "China", position: "Quality Control Manager", department: "Production", organizationable_id: 2, organizationable_type: "Supplier")

User.create(name: "Jenifer", about: "@thisisjen", email: "jenifer.deveen@example.com", url: "https://randomuser.me/api/portraits/women/95.jpg", dob: "1996-11-05", phone: "(009)183-3862", location: "Florence, Italy", position: "Fabric Manager", department: "Fabric Reasearch and Development", organizationable_id: 3, organizationable_type: "Supplier")

Garment.create(brand_id: 1, name: "Havana Trench Coat", url: "https://as1.ftcdn.net/jpg/01/97/44/26/500_F_197442683_ZqvLvKM8mt3keqzXdNHCZ8YNTq4fmJTC.jpg", category: "Outerwear", season: "Cruise 2019", rate: 1, location: "China", status: "1st Stock Sample", fabrication: "100% Cotton Washed Canvas", sizing: "XXS-XXL", measurement: "Body Length: 33 1/2, Shell Inseam: 12 5/6, Pocket: W: 5 x H: 2, Elbow Patches Placement from shoulder: 2 1/2", fit_comment: "Button holes to be made 1/8 inch larger, as the Buttons have already been ordered", comment: "Wash approved as per 1st Factory Stock Sample")

Garment.create(brand_id: 2, name: "Dakota Skirt", url: "https://petiterepublic.files.wordpress.com/2010/11/000001753158.jpeg", category: "Bottoms", season: "Spring 2020", rate: 2, location: "Sri Lanka", status: "2nd Stock Sample", fabrication: "Silk Jacquard", sizing: "S-L", measurement: "Body Length: 42 13/16, Sleeve Opening: 12 1/2, Skirt Length: 32, Side Pocket Width: 17 5/6", fit_comment: "Sleeve Length revised to be 33 1/4 inches", comment: "Please attach all buttons securely. Factory to test each button to ensure functionality")

Garment.create(brand_id: 3, name: "Rio Dress", url: "https://indigorchid.files.wordpress.com/2011/12/boat_dress_flat.jpg", category: "Dresses", season: "Spring 2020", rate: 3, location: "Bangladesh", status: "Showroom Sample", fabrication: "Cotton Poplin", sizing: "XS-XL", measurement: "Armhole Circumference: 16 7/8, Across Shoulder: 21 1/2, Sleeve Opening: 10, Mock Neck Height: 3 3/4", fit_comment: "Reduce across shoulder, across back, and across front as pinned", comment: "Contrast stitching should be in black")

Garment.create(brand_id: 1, name: "Sailor Pants", url: "https://www.lekala.co/files/-r-/models/558/558_technical_drawing_2753.jpg", category: "Bottoms", season: "Cruise 2019", rate: 4, location: "Italy", status: "Showroom Sample", fabrication: "Garment Dyed Twill", sizing: "XS-XL", measurement: "Inseam: 29, Rise: 9 15/16, Back Pocket Width: 3 1/2, Front Pocket Curve: 3 15/16", fit_comment: "Reduce leg length by 2 inches, move back pockets 3/4 inch to the left", comment: "Contrast stitching should be in gold")

Material.create(supplier_id: 1, name: "Main Label", item_number: "1230", category: "Trim", size: "L: 2 15/16 x W: 9/16 inches", quantity: 1, color: "Navy ground with silver letters", usage: "Attached at Center Back Neck", price: "US$0.50", comment: "Stitched at four sides")
Material.create(supplier_id: 2, name: "Washed Canvas", item_number: "1231", category: "Fabric", size: "43 inches", quantity: 1, color: "PFD", usage: "shell and seam binding", price: "US$10.10/yd", comment: "100% Cotton")
Material.create(supplier_id: 3, name: "Silver Invisible Zipper", item_number: "1232", category: "Trim", size: "12 inches", quantity: 1, color: "Black", usage: "Side seam", price: "US$0.10", comment: "Zipper should be placed 2 inches from waist")
Material.create(supplier_id: 1, name: "Corozo Button", item_number: "1233", category: "Trim", size: "", quantity: 1, color: "Caramel", usage: "At center front, at each cuff", price: "US$0.05", comment: "1 extra button")
Material.create(supplier_id: 2, name: "Silk Charmeuse", item_number: "1234", category: "Fabric", size: "43 inches", quantity: 1, color: "Off White", usage: "Shell and lining", price: "US$18/yd", comment: "100% silk")

GarmentMaterial.create(garment_id: 1, material_id: 1)
GarmentMaterial.create(garment_id: 1, material_id: 2)
GarmentMaterial.create(garment_id: 1, material_id: 3)
GarmentMaterial.create(garment_id: 1, material_id: 4)
GarmentMaterial.create(garment_id: 1, material_id: 5)
GarmentMaterial.create(garment_id: 2, material_id: 1)
GarmentMaterial.create(garment_id: 2, material_id: 2)
GarmentMaterial.create(garment_id: 2, material_id: 3)
GarmentMaterial.create(garment_id: 2, material_id: 4)
GarmentMaterial.create(garment_id: 3, material_id: 1)
GarmentMaterial.create(garment_id: 3, material_id: 2)
GarmentMaterial.create(garment_id: 3, material_id: 3)
