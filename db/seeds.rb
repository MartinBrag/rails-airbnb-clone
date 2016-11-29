# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Buyer.destroy.all
# Order.destroy.all
# Seller.destroy.all

# Buyer.create(username:" Miguel", email:"mixcharles@gmail.com", password:"xx", city: "Bruxelles")
# Buyer.create(username:" Martin", email:"Martin@gmail.com", password:"xoxo", city: "Louvain-La-Neuve")
# Buyer.create(username:" François", email:"Francois@gmail.com", password:"xixi", city: "Liège")
# Buyer.create(username:" David", email:"David@gmail.com", password:"xaxa", city: "Anderlecht")

# Order.create(status: "To be confirmed", buyer_id: Buyer.all.sample.id)
# Order.create(status: "Cancelled", buyer_id: Buyer.all.sample.id)
# Order.create(status: "Accepted", buyer_id: Buyer.all.sample.id)
# Order.create(status: "Paid", buyer_id: Buyer.all.sample.id)
# Order.create(status: "Picked-up", buyer_id: Buyer.all.sample.id)

Seller.create(username:"Maison Bragard & fils", password:"xuxu", city:"Bruxelles", description:"Votre boucher depuis 150 ans", category:"Butcher", email:"MartinB@gmail.com", phonenumber:"+32123450")
Seller.create(username:"Maison Liénard", password:"xyxy", city:"Anderlecht", description:"Votre Boulanger, proche des abbatoirs", category:"Baker", email:"DavidL@gmail.com", phonenumber:"+32543210")
Seller.create(username:"A la rose fanée", password:"xexe", city:"Bruxelles", description:"Votre fleuriste épineux", category:"Florist", email:"MiguelC@gmail.com", phonenumber:"+329876542")
