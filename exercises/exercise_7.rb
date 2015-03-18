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
# @store7 shouldnt be created because it breaks the custom validation
@store7 = Store.create(name: 'Shouldnt be create', annual_revenue: 1_000_000, mens_apparel: false, womens_apparel: false)
@store8 = Store.create(name: 'Should be create', annual_revenue: 1_000_000, mens_apparel: true, womens_apparel: false)

p "Insert a store name"
store_name = STDIN.gets.chomp

user_store = Store.create(name: store_name)
puts user_store.errors.messages.each { |message| puts message }
