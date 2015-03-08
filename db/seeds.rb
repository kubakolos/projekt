# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Item.destroy_all

Item.create(name: "H1", quantity: 0, vat: 0.23, price: 2.50)
Item.create(name: "H2", quantity: 0, vat: 0.23, price: 1.80)

puts "Items created"