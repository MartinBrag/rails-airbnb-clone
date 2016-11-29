# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
OrderLine.destroy_all
Order.destroy_all
Buyer.destroy_all
Promotion.destroy_all
Seller.destroy_all


Buyer.create(username:" Miguel", email:"mixcharles@gmail.com", password:"xx", city: "Bruxelles")
Buyer.create(username:" Martin", email:"Martin@gmail.com", password:"xoxo", city: "Louvain-La-Neuve")
Buyer.create(username:" François", email:"Francois@gmail.com", password:"xixi", city: "Liège")
Buyer.create(username:" David", email:"David@gmail.com", password:"xaxa", city: "Anderlecht")

Order.create(status: "To be confirmed", buyer_id: Buyer.all.sample.id)
Order.create(status: "Cancelled", buyer_id: Buyer.all.sample.id)
Order.create(status: "Accepted", buyer_id: Buyer.all.sample.id)
Order.create(status: "Paid", buyer_id: Buyer.all.sample.id)
Order.create(status: "Picked-up", buyer_id: Buyer.all.sample.id)

Seller.create(username:"Maison Bragard & fils", password:"xuxu", city:"Bruxelles", description:"Votre boucher depuis 150 ans", category:"Butcher", email:"MartinB@gmail.com", phonenumber:"+32123450")
Seller.create(username:"Maison Liénard", password:"xyxy", city:"Anderlecht", description:"Votre Boulanger, proche des abbatoirs", category:"Baker", email:"DavidL@gmail.com", phonenumber:"+32543210")
Seller.create(username:"A la rose fanée", password:"xexe", city:"Bruxelles", description:"Votre fleuriste épineux", category:"Florist", email:"MiguelC@gmail.com", phonenumber:"+329876542")

5.times do
  unit1 = ["Kg","piece(s)"]
  unit2 = unit1[rand(0..1)]
  Promotion.create(seller_id: Seller.all.sample.id,
  initialquantity:(1..100).to_a.sample,
  remainingquantity: (1..100).to_a.sample,
  description: Faker::Hipster.sentence,
  unit: unit2,
  duration: Faker::Time.forward(3, :morning),
  promotionstatus: true,
  producttype: Faker::Beer.name,
  code: (1000..9999).to_a.sample,
  title: Faker::GameOfThrones.character,
  priceperunit: Faker::Commerce.price,
  discount:(0...100).to_a.sample)
end

5.times do
OrderLine.create(
  order_id: Order.all.sample.id,
  promotion_id: Promotion.all.sample.id,
  status: ["To be confirmed", "Cancelled", "Accepted", "Paid", "Picked-up"].sample.to_s
  )
end
