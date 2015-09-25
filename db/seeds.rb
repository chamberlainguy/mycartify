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
c4 = Category.create name: 'Things for your Pug'

Product.destroy_all
p1 = Product.create name: 'Lego Ningago', description: 'A really good example of ningago ',price: 10.95, list_price: 12.95, image: 'http://res.cloudinary.com/dmsp719b6/image/upload/v1443139195/ningago1_hiyok2.png', available: true, quantity: 98, postage: 2.95
p2 = Product.create name: 'Lego City', description: 'Some fantastic city lego at a bargain price',price: 7.95, list_price: 11.95, image: 'http://res.cloudinary.com/dmsp719b6/image/upload/v1443141668/legocity_rnw5ep.jpg', available: true, quantity: 192, postage: 2.95
p3 = Product.create name: 'MP-5K-PDW', description: 'Kick some brass with this fine Swiss crafted highly concealable mini 9mm submachine gun',price: 1227.95, list_price: 1411.95, image: 'http://res.cloudinary.com/dmsp719b6/image/upload/v1443183209/pdw_cdug3z.jpg', available: true, quantity: 91, postage: 112.95

c1.products << p1 << p2
c3.products << p3

Buyer.destroy_all
b1 = Buyer.create name: 'Guy McFly', email: 'guy@gmail.com', password: 'chicken', address: '56 york st', suburb: 'Surry Hills', city: 'Sydney', state: 'NSW', post_code: '2001', country: 'Australia'
b2 = Buyer.create name: 'Big Tony', email: 'tony@gmail.com', password: 'chicken', address: '56 york st', suburb: 'Surry Hills', city: 'Sydney', state: 'NSW', post_code: '2001', country: 'Australia'
b3 = Buyer.create name: 'Kylie', email: 'kylie@gmail.com', password: 'chicken', address: '56 york st', suburb: 'Surry Hills', city: 'Sydney', state: 'NSW', post_code: '2001', country: 'Australia'

Cart.destroy_all

Lineitem.destroy_all
