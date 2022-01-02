require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "John", last_name: "Doe", hourly_rate: 55)
@store2.employees.create(first_name: "Jane", last_name: "Doe", hourly_rate: 66)

# Input store name
puts "Enter a store name:"
name = $stdin.gets.chomp
new_store = Store.create(name: name, annual_revenue: 500000, mens_apparel: true, womens_apparel: true)

# display errors
new_store.errors.messages.each do |message|
  p message
end
