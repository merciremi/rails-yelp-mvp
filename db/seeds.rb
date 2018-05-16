puts 'Creating 5 fake restaurants'

5.times do
  restaurant = Restaurant.new(
    name: Faker::Company.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample
    )
  restaurant.save!
end

puts 'All done 👌'
