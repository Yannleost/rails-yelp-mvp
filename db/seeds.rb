# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'

CATEGORY = ["japanese", "french", "belgian", "chinese", "italian"]
10.times do
  a = Restaurant.new(
    name: Faker::Name.name,
    address: Faker::Address.city,
    category: CATEGORY.sample,
    )
  a.save!
end

