5.times do
  Flat.create!(
    name: Faker::ProgrammingLanguage.name,
    address: Faker::Address.street_address,
    description: Faker::Marketing.buzzwords,
    price_per_night: rand(25..100),
    number_of_guests: rand(1..5)
  )
end