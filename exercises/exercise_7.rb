require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
# Input store name
puts "Enter a store name:"
name = $stdin.gets.chomp
new_store = Store.create(name: name, annual_revenue: 500000, mens_apparel: true, womens_apparel: true)

# display errors
new_store.errors.messages.each do |message|
  p message
end
