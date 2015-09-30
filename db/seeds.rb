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
										description: "For when your pug's just gotta dance",
										price: 49.95,
										list_price: 189.95,
										image: 'http://barkpost.com/wp-content/uploads/2013/06/pug3-600x600.jpg',
										available: true,
										quantity: 221,
										postage: 12.95
p9 = Product.create name: 'Overalls',
										description: "For when your pug's just gotta look casual",
										price: 4.95,
										list_price: 18.95,
										image: 'http://barkpost.com/wp-content/uploads/2013/06/pug1-600x800.jpg',
										available: true,
										quantity: 22,
										postage: 1.95
p10 = Product.create name: 'Tuxedo suit',
										description: "For when your pug's gotta go to a wedding",
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
p12 = Product.create name: 'Pug tote',
										description: 'Winston the pug tote for pug lovers',
										price: 3.95,
										list_price: 9.95,
										image: 'http://productshots1.modcloth.net/productshots/0153/5977/fc8d7a9177907e3e6426d206a91fd00a.jpg?1426794503',
										available: true,
										quantity: 22,
										postage: 1.95
p13 = Product.create name: 'Pug wig trio',
										description: 'Pug wig set of 3 for your fur babies',
										price: 9.95,
										list_price: 19.95,
										image: 'http://yostatus.com/wp-content/uploads/2013/10/PugWigGang.jpg',
										available: true,
										quantity: 22,
										postage: 1.95		
p14 = Product.create name: 'Hipster glasses',
										description: 'Hipster glasses for you or your pug',
										price: 15.95,
										list_price: 29.95,
										image: 'https://s-media-cache-ak0.pinimg.com/736x/88/2a/10/882a1009167623c641e745901b2c294f.jpg',
										available: true,
										quantity: 22,
										postage: 1.95
p15 = Product.create name: 'Pair of hipster glasses',
										description: 'Two for one hipster glasses, one for you and one for your pug',
										price: 37.95,
										list_price: 49.95,
										image: 'http://thatssofetch.typepad.com/.a/6a0120a5691bb9970b0120a8dfbcdf970b-pi',
										available: true,
										quantity: 22,
										postage: 1.95
p16 = Product.create name: 'Pug mug',
										description: 'Pug mug for a pug lover',
										price: 3.95,
										list_price: 9.95,
										image: 'http://productshots0.modcloth.net/productshots/0137/4983/cbf61e07b77ffaa133ca94052598edf5.jpg?1389133543',
										available: true,
										quantity: 22,
										postage: 3.95
p17 = Product.create name: 'Mushroom pet cushion',
										description: 'Mushroom cushion for your pug',
										price: 14.95,
										list_price: 29.95,
										image: 'http://blog.modcloth.com/wp-content/uploads/2007/10/wintononmushroom.jpg',
										available: true,
										quantity: 22,
										postage: 9.95
p18 = Product.create name: 'Pug book ends',
										description: 'Pug book ends',
										price: 10.95,
										list_price: 29.95,
										image: 'http://productshots2.modcloth.net/productshots/0054/3779/b35694ba4260622d2508b27429c1ec42.jpg?1292950783',
										available: true,
										quantity: 22,
										postage: 7.95
p19 = Product.create name: 'Majestic Renaissance pug costume',
										description: 'Majestic Renaissance pug costume for a special occasion',
										price: 39.95,
										list_price: 49.95,
										image: 'http://ak-hdl.buzzfed.com/static/2013-10/enhanced/webdr03/20/12/enhanced-buzz-9890-1382285551-13.jpg',
										available: true,
										quantity: 22,
										postage: 3.95
p20 = Product.create name: '2001 Bjork Swan Dress costume',
										description: '2001 Bjork Swan Dress Pug for your socially awkward pug',
										price: 24.95,
										list_price: 34.95,
										image: 'http://i.imgur.com/mahxpwa.jpg',
										available: true,
										quantity: 22,
										postage: 3.95
p21 = Product.create name: 'Dr Who costume',
										description: 'Dr Who pug costume for a sci fi loving pug',
										price: 9.95,
										list_price: 19.95,
										image: 'http://cdn.instructables.com/FO2/BK38/HMMF80VU/FO2BK38HMMF80VU.LARGE.jpg',
										available: true,
										quantity: 22,
										postage: 3.95
p22 = Product.create name: 'Pugtato costume',
										description: "Baked pugtato costume",
										price: 9.95,
										list_price: 19.95,
										image: 'http://i.imgur.com/MaEzp9J.jpg',
										available: true,
										quantity: 22,
										postage: 3.95
p23 = Product.create name: 'Majestic eagle pug costume',
										description: 'Majestic eagle pug costume',
										price: 19.95,
										list_price: 39.95,
										image: 'http://41.media.tumblr.com/340530cd27c75dfb432f5d2b31e3dcb7/tumblr_muew6agROQ1r0xr7wo1_1280.jpg',
										available: true,
										quantity: 22,
										postage: 3.95
p24 = Product.create name: 'Pugkin spice latte costume',
										description: 'Pugkin spice latte costume for your pug',
										price: 19.95,
										list_price: 29.95,
										image: 'http://i.imgur.com/ScHxezM.jpg',
										available: true,
										quantity: 22,
										postage: 3.95
										

c1.products << p1 << p2 << p12
c2.products << p5
c3.products << p3 << p4
c4.products << p6 << p7
c5.products << p8 << p9 << p10 << p11 << p13 << p14 << p15 << p16 << p17 << p18 << p19 << p20 << p21 << p22 << p23 << p24

Alsobought.destroy_all
ab1 = Alsobought.create product: p1, alsogot: p2
ab2 = Alsobought.create product: p2, alsogot: p1 

ab3 = Alsobought.create product: p3, alsogot: p4
ab4 = Alsobought.create product: p4, alsogot: p3 

ab5 = Alsobought.create product: p6, alsogot: p7
ab6 = Alsobought.create product: p7, alsogot: p6 

ab7 = Alsobought.create product: p8, alsogot: p9 
ab8 = Alsobought.create product: p8, alsogot: p10 
ab9 = Alsobought.create product: p8, alsogot: p11

ab10 = Alsobought.create product: p9, alsogot: p8
ab11 = Alsobought.create product: p9, alsogot: p10 
ab12 = Alsobought.create product: p9, alsogot: p11

ab13 = Alsobought.create product: p10, alsogot: p8 
ab14 = Alsobought.create product: p10, alsogot: p9 
ab15 = Alsobought.create product: p10, alsogot: p11 

ab16 = Alsobought.create product: p11, alsogot: p4
ab17 = Alsobought.create product: p11, alsogot: p8 
ab18 = Alsobought.create product: p11, alsogot: p9 
ab19 = Alsobought.create product: p11, alsogot: p10 


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
b3 = Buyer.create name: 'Kylie-0',
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
