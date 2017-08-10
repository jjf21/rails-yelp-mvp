puts 'Cleaning database...'
Review.destroy_all
Restaurant.destroy_all

puts 'Creating restaurants...'

5.times do 
  r = Restaurant.create(name: Faker::Company.name, address: Faker::Address.street_address, phone_number: Faker::PhoneNumber.phone_number, category: Restaurant::CATEGORY.sample)
  5.times do
    r.reviews.create(content: Faker::ChuckNorris.fact, rating: (0..5).to_a.sample )
  end
end

puts 'Finished!'
