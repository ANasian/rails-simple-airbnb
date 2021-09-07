puts "Cleaning the DB"
Flat.destroy_all
puts "DB cleaned"

puts "Seeding the DB"

5.times do
  Flat.create!(
    name: Faker::ProgrammingLanguage.name,
    address: Faker::Address.street_address,
    description: Faker::Marketing.buzzwords,
    price_per_night: rand(25..100),
    number_of_guests: rand(1..5),
    image_url: "https://source.unsplash.com/178j8tJrNlc/1600x900"
  )
end
puts "Done"
