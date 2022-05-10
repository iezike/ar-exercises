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
Employee.validates :first_name, presence: true
Employee.validates :last_name, presence: true
Employee.validates :hourly_rate, numericality: { greater_than_or_equal_to: 40, less_than_or_equal_to: 200 }
Employee.validates :store_id, presence: true

Store.validates :name, length: { minimum: 3 }
Store.validates :annual_revenue, numericality: { greater_than_or_equal_to: 0}

@name = gets.chomp
newStore = Store.create(name: @name)
puts newStore.errors.full_messages

#@name = gets.chomp
# @annual_revenue = gets.chomp
# @mens_apparel = gets.chomp
# @womens_apparel = gets.chomp


# newStore = Store.create(name: @name, annual_revenue: @annual_revenue, mens_apparel: @mens_apparel, womens_apparel: @womens_apparel)

# puts newStore.name