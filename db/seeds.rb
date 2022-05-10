# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

FILE_PATH = '/Users/jose.espinosa/Desktop/smartflix/lib/assets/netflix_titles.csv'.freeze

puts "Seeding DB"
Rake::Task['extract_shows_from_csv_spec:run'].invoke(FILE_PATH)
puts "Seeding completed"