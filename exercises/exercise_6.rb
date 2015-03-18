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
@store1.employees.create(first_name: "chico", last_name: "banana", hourly_rate: 45)
@store1.employees.create(first_name: "joao", last_name: "alto", hourly_rate: 42)
@store1.employees.create(first_name: "inacio", last_name: "costa", hourly_rate: 67)
@store2.employees.create(first_name: "Paulo", last_name: "jose", hourly_rate: 140)
@store2.employees.create(first_name: "kiwi", last_name: "fruit", hourly_rate: 132)
@store2.employees.create(first_name: "Mango", last_name: "Silva", hourly_rate: 77)
#below employee not expected to be created due to out of hourly_rate (40..200)
@store2.employees.create(first_name: "Apple", last_name: "Silva", hourly_rate: 22) 
#below employee not expected to be created due to out of hourly_rate (40..200)
@store2.employees.create(first_name: "Caroco", last_name: "Silva", hourly_rate: 230) 

