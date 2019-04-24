# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
Movie.destroy_all
100.times do
Movie.create!(name: Faker::Book.unique.title, year: Faker::Date.between(1900, 2020),
 genre: ["comédie", "action", "horreur", "drame"].sample,
synopsis: Faker::Lorem.paragraph, director: Faker::Name.name, allocine_rating: Faker::Number.between(1,5), 
already_seen: false)
end

