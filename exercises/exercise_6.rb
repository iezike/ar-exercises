require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
Store.has_many :employees
Employee.belongs_to :store

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Ken", last_name: "Kim", hourly_rate: 55)


@store2.employees.create({first_name: "Ken", last_name: "Kim", hourly_rate: 55})
@store2.employees.create(first_name: "Ike", last_name: "Ezi", hourly_rate: 70)
@store2.employees.each do |e|
  puts e.hourly_rate
end



