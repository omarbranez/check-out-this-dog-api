# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# dogs_data = Mechanize.new.get("https://api.thedogapi.com/v1/breeds")
# dogs_data = JSON.parse(dogs_data.body)
# dogs_data.each do |dog|
#     dog_hash = {}
#     dog_hash[:breed] = dog["name"]
#     dog_hash[:temperament] = dog["temperament"]
#     dog_hash[:life_span] = dog["life_span"]
#     dog_hash[:bred_for] = dog["bred_for"]
#     dog_hash[:breed_group] = dog["breed_group"]
#     dog_hash[:origin] = dog["origin"]
#     dog_hash[:image] = dog["image"]["url"]
#     dog_hash[:weight] = dog["weight"]["imperial"]
#     dog_hash[:height] = dog["height"]["imperial"]
#     Dog.where(dog_hash).first_or_create    
# end

# User.create( 
#     :username => "admin",
#     :password => "admin",
# )
# User.create(
#     :username => "rando",
#     :password => "rando"
# )
# Encounter.create(
#     :name => "Pancake",
#     :user_id => 1,
#     :dog_id => 466,
#     :gender => "Female", #should be 1,2,3 (not sure)
#     :color => "Red and White",
#     :age => "7",
#     :features => "VERY LONG. Has a wheelchair",
#     :reactions => "SO CUTE!",
#     :lat => 40.7052184,
#     :lng => -74.0137679
# )
# Encounter.create(
#     :name => "Potato",
#     :user_id => 1,
#     :dog_id => 466,
#     :gender => "Male",
#     :color => "Red and White",
#     :age => "3",
#     :features => "VERY LONG. Very active",
#     :reactions => "Is the most S P U D",
#     :lat => 40.8052184,
#     :lng => -74.0137679
# )
Encounter.create(
    :name => "Lexi",
    :user_id => 2,
    :dog_id => 472,
    :gender => "Female",
    :color => "Chocolate",
    :age => "2",
    :features => "useless. is velcro",
    :demeanor => "thinks its a great dane",
    :lat => 40.756260,
    :lng => -73.893730

)
def seed_image(file_name)
    # binding.pry
    File.open(File.join(Rails.root, "/app/assets/#{file_name}.jpg"))
end
# phase-5/check-out-this-dog-api/app/assets/IMG_8651.jpg
# Encounter.find(1).attributes[:photo] = seed_image("IMG_8651")
# Encounter.find(1).photo.attach(io: File.open('app/assets/IMG_8651.jpg'), filename: 'pancake.jpg', content_type: 'image/jpg')
# Encounter.find(2).photo.attach(io: File.open('app/assets/IMG_8652.jpg'), filename: 'potato.jpg', content_type: 'image/jpg')
Encounter.find(3).photo.attach(io: File.open('app/assets/IMG_0464.jpg'), filename: 'lexi.jpg', content_type: 'image/jpg')
