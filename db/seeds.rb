# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Category.destroy_all
c1 = Category.create name: 'Toys'
c2 = Category.create name: 'Clothing'
c3 = Category.create name: 'Guns'
c4 = Category.create name: 'Games'
c5 = Category.create name: 'Things for your Pug'

# SPACED OUT FOR READABILTY WHILST PROJECT BEING WORKED ON
Product.destroy_all
p1 = Product.create name: 'Lego Ningago',
										description: 'A really good example of ningago',
										price: 10.95,
										list_price: 12.95,
										image: 'http://res.cloudinary.com/dmsp719b6/image/upload/v1443139195/ningago1_hiyok2.png',
										available: true,
										quantity: 98,
										postage: 2.95
p2 = Product.create name: 'Lego City',
										description: 'Some fantastic city lego at a bargain price',
										price: 7.95,
										list_price: 11.95,
										image: 'http://res.cloudinary.com/dmsp719b6/image/upload/v1443141668/legocity_rnw5ep.jpg',
										available: true,
										quantity: 192,
										postage: 2.95
p3 = Product.create name: 'MP-5K-PDW', 
										description: 'Kick some brass with this fine Swiss crafted highly concealable mini 9mm submachine gun', 
										price: 1227.95, 
										list_price: 1411.95, 
										image: 'http://res.cloudinary.com/dmsp719b6/image/upload/v1443183209/pdw_cdug3z.jpg', 
										available: true, 
										quantity: 91, 
										postage: 112.95
p4 = Product.create name: 'Glock .30', 
										description: 'Small, compact, the one. When your mates have to ask "Do they make them for men?"', 
										price: 725.95, 
										list_price: 1227.95, 
										image: 'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRdt88iN2MKNq9OJM-mm4zueWdbj0y0TMHX7nz-ugkYt7P2c4wY8Q', 
										available: true, 
										quantity: 151, 
										postage: 112.95
p5 = Product.create name: 'Ted', 
										description: '*insert adult censory here*', 
										price: 79.95, 
										list_price: 99.95, 
										image: 'http://i.ebayimg.com/00/s/ODAwWDgwMA==/z/EZYAAOSwBLlVS38J/$_57.JPG', 
										available: true, 
										quantity: 1, 
										postage: 24.95
p6 = Product.create name: 'PlayStation 4', 
										description: 'Be, superior to king of the world...', 
										price: 199.95, 
										list_price: 399.95, 
										image: 'http://assets.console-deals.com/images/content/ps4-console.png', 
										available: true, 
										quantity: 755, 
										postage: 112.95
p7 = Product.create name: 'Alienware M17x R3',
										description: 'When on le move',
										price: 499.95,
										list_price: 1899.95,
										image: 'http://www.techomag.com/wp-content/uploads/2011/10/alienware2.jpg',
										available: true,
										quantity: 22,
										postage: 112.95
p8 = Product.create name: 'Ballerina Outfit',
										description: 'For when your pug just gotta dance',
										price: 49.95,
										list_price: 189.95,
										image: 'http://barkpost.com/wp-content/uploads/2013/06/pug3-600x600.jpg',
										available: true,
										quantity: 221,
										postage: 12.95
p9 = Product.create name: 'Overalls',
										description: 'For when your pug just gotta look casual',
										price: 4.95,
										list_price: 18.95,
										image: 'http://barkpost.com/wp-content/uploads/2013/06/pug1-600x800.jpg',
										available: true,
										quantity: 22,
										postage: 1.95
p10 = Product.create name: 'Tuxedo',
										description: 'For when your pug gotta go to a wedding',
										price: 4.95,
										list_price: 18.95,
										image: 'http://barkpost.com/wp-content/uploads/2013/06/pug2-600x599.jpg',
										available: true,
										quantity: 22,
										postage: 1.95
p11 = Product.create name: 'Pirate outfit',
										description: 'For your pirate pug',
										price: 4.95,
										list_price: 18.95,
										image: 'http://barkpost.com/wp-content/uploads/2013/06/pug5-600x851.jpg',
										available: true,
										quantity: 22,
										postage: 1.95

c1.products << p1 << p2
c2.products << p5
c3.products << p3 << p4
c4.products << p6 << p7
c5.products << p8 << p9 << p10 << p11

Buyer.destroy_all
b1 = Buyer.create name: 'Guy McFly',
									email: 'guy@gmail.com',
									password: 'chicken',
									address: '56 york st',
									suburb: 'Surry Hills',
									city: 'Sydney',
									state: 'NSW',
									post_code: '2001',
									country: 'Australia'
b2 = Buyer.create name: 'T-Dizzle',
									email: 'tony@gmail.com',
									password: 'chicken',
									address: '56 york st',
									suburb: 'Surry Hills',
									city: 'Sydney',
									state: 'NSW',
									post_code: '3000',
									country: 'Australia'
b3 = Buyer.create name: 'Kylie',
									email: 'kylie@gmail.com',
									password: 'chicken',
									address: '56 york st',
									suburb: 'Surry Hills',
									city: 'Sydney',
									state: 'NSW',
									post_code: '2001',
									country: 'Australia'

Cart.destroy_all

Lineitem.destroy_all
