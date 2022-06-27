puts "🌱 Seeding spices..."
# create sellers
5.times do
  Seller.create(
    name: Faker::Name.name,
    contact: Faker::Address.city
  )
end

puts "✅ Done seeding!"
