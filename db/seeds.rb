puts "🌱 Seeding spices..."
# create sellers

joseph = Seller.create(name: "Joseph Tiago", email:"joseph@email.com", password:"password",contact:"+254701234567")
mary = Seller.create(name: "Mary Mashimoto", email:"mary@email.com", password:"password",contact:"+254701222345")


# create item list

item1 = Item.create(category:"sofas",  image_url:"item1 image",  condition:"good", price:800,  details: "2 seater", seller_id:joseph.id)
item2 = Item.create(category:"sofas",  image_url:"item2 image",  condition:"new", price:500,  details: "3 seater recliner ",seller_id:joseph.id)
item3 = Item.create(category:"beds",  image_url:"item3 image",  condition:"okay", price:400,  details: "kingsize", seller_id:mary.id)
item4 = Item.create(category:"beds",  image_url:"item4 image",  condition:"good", price:800,  details: "queen size", seller_id:mary.id)



puts "✅ Done seeding!"
