require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

puts 'Stores total revenue'
puts Store.sum(:annual_revenue)

puts 'Stores average revenue'
puts Store.average(:annual_revenue)

puts 'Stores generating more than 1M in annual revenue'
puts Store.where('annual_revenue > ?',1_000_000).count