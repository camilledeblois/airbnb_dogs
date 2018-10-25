# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

require 'faker'

5.times do
	city = City.create!(city_name:Faker::Address.city)
end

10.times do
	dogsitter = Dogsitter.create!(first_name: Faker::Name.first_name,last_name:Faker::Name.last_name, city_id: rand(1...5))
end

10.times do
	dog = Dog.create!(name: Faker::Dog.name, city_id: rand(1...10))
end

20.times do
	stroll = Stroll.create!(date: Faker::Date.backward(30), dogsitter_id:rand(1...10), dog_id:rand(1...10))
end