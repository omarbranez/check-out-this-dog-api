# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

dogs_data = Mechanize.new.get("https://api.thedogapi.com/v1/breeds")
dogs_data = JSON.parse(dogs_data.body)
dogs_data.each do |dog|
    dog_hash = {}
    dog_hash[:breed] = dog["name"]
    dog_hash[:temperament] = dog["temperament"]
    dog_hash[:life_span] = dog["life_span"]
    dog_hash[:bred_for] = dog["bred_for"]
    dog_hash[:breed_group] = dog["breed_group"]
    dog_hash[:origin] = dog["origin"]
    dog_hash[:image] = dog["image"]["url"]
    dog_hash[:weight] = dog["weight"]["imperial"]
    dog_hash[:height] = dog["height"]["imperial"]
    Dog.where(dog_hash).first_or_create    
end