puts "🌱 Seeding spices..."
# create sellers
tabby = Seller.create(name: "Tabby", email:"tabby@email.com", password:"password",contact:"0720123456")
jack = Seller.create(name: "jack", email:"jack@email.com", password:"password",contact:"+254701333333")
kim = Seller.create(name: "kim", email:"kim@email.com", password:"password",contact:"+254701444444")
zakari = Seller.create(name: "zakari", email:"zakari@email.com", password:"password",contact:"+254701555555")


# create item list

item1 = Item.create(category:"sofas",  image_url:"https://media.istockphoto.com/photos/modern-sofa-xxl-clipping-path-picture-id173003652?b=1&k=20&m=173003652&s=170667a&w=0&h=crWCDDZUhXGZYmPIJqrW5CPfSGLoXLJaJqf0lrDTaZg=",  condition:"good", price:800,  details: "2 seater ", seller_id:tabby.id)
item2 = Item.create(category:"beds",  image_url:"https://images.unsplash.com/photo-1530334565651-210b286480b7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8a2luZyUyMHNpemUlMjBiZWR8ZW58MHx8MHx8&auto=format&fit=crop&w=600&q=60",  condition:"new", price:500,  details: "king size",seller_id:jack.id)
item3 = Item.create(category:"sofas",  image_url:"https://media.istockphoto.com/photos/sofa-picture-id185634586?b=1&k=20&m=185634586&s=170667a&w=0&h=lsNgDOl9WO7_nmIVTMBLZ8hL7YYSpIOFfWtK8Bgorr8=",  condition:"new", price:500,  details: "3 seater ",seller_id:jack.id)
item4 = Item.create(category:"beds",  image_url:"https://images.unsplash.com/photo-1458731909820-5850bdcaee0b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YmFieSUyMGNvdHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=600&q=60",  condition:"good", price:800,  details: "baby cot", seller_id:tabby.id)
item5 = Item.create(category:"sofas",  image_url:"https://media.istockphoto.com/photos/two-seater-leather-sofa-picture-id176002020?b=1&k=20&m=176002020&s=170667a&w=0&h=Eq17p1puicVJN_OFbYSykQ7cWAoyjuPOZ74zLyEMuP0=",  condition:"okay", price:400,  details: "2 seater recliner", seller_id:kim.id)
item6 = Item.create(category:"beds",  image_url:"https://images.unsplash.com/photo-1582582621959-48d27397dc69?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cXVlZW4lMjBzaXplJTIwYmVkfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60",  condition:"okay", price:400,  details: "queen size", seller_id:kim.id)
item7 = Item.create(category:"sofas",  image_url:"https://media.istockphoto.com/photos/interior-mockup-a-two-seater-sofa-and-a-croton-tree-in-front-of-green-picture-id1295826772?b=1&k=20&m=1295826772&s=170667a&w=0&h=WFNh7vbMvNDYaEQeHFuC5Kl7W2w1rHzhatlOayo6LaY=",  condition:"good", price:800,  details: "love chair", seller_id:zakari.id)
item8 = Item.create(category:"beds",  image_url:"https://media.istockphoto.com/photos/bedding-picture-id135903639?b=1&k=20&m=135903639&s=170667a&w=0&h=WUvo2RbMTXKr_6WIiP8Ag6a45qEh5NDrsdyg1yL3qp0=",  condition:"good", price:800,  details: "double decker", seller_id:zakari.id)

puts "✅ Done seeding!"
