# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Flat.destroy_all

puts "Creating flats..."
caperliparlacoloc = { name: "Caperliparlacoloc", address: "LV Lyon", description: "Cute & pretty", price_per_night: 50, number_of_guest: 3 }
montribloc = { name: "Montribloc", address: "M Lyon", description: "Big & spacious", price_per_night: 70, number_of_guest: 12 }

[ caperliparlacoloc, montribloc ].each do |attributes|
  flat = Flat.create!(attributes)
  puts "Created #{flat.name}"
end
puts "Finished!"
