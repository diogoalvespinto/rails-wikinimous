# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

puts 'Clearing db...'
Article.delete_all
puts 'db cleared'

puts 'seeding...'
10.times do
  article = Article.new(
    title: Faker::Company.name,
    content: Faker::Address.street_address
  )
  article.save!
  puts "#{article.title} created successfully!"
end
puts 'seeding completed!'
