# First clean the database
puts 'Cleaning database...'
Restaurant.destroy_all

# Create the restaurants as variablenames and hashes with the attributes
puts "Creating restaurants..."
mamamakana = {name: 'Mama Makana', address: 'Amsterdam', category: 'chinese' }
frietkot = {name: 'Het Frietkot', address: 'Antwerpen', category: 'belgian' }
yerba = {name: 'Yerba', address: 'Amsterdam', category: 'french' }
pizzabakkers = {name: 'De Pizzabakkers', address: 'Hilversum', category: 'italian' }
napolitana = {name: 'Napolitana', address: 'Everywhere', category: 'italian' }

# Create these restaurants as instances of Restaurant & confirm in terminal
[mamamakana, frietkot, yerba, pizzabakkers, napolitana].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
