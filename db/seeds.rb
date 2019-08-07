# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



# test unitaire
=begin
u = User.create(first_name:"Kali", last_name:"coco", description:"Glook", email:"croco@pico.com", age:22)
c = City.create(name:"Ambohimadizina", zip_code:"6713",user_id:1)
g = Gossip.create(title:"Klindindin", content:"io klits eee!",user_id:1,tag_id:1)
t = Tag.create(title:"Gloupsss",gossip_id:1)
pm = PrivateMessage.create(content:"eo ar oe!",sender_id:1,recipient_id:1)
=end

require 'faker'

10.times do
c = City.create(name:Faker::Address.city, zip_code:Faker::Address.zip_code,user_id:Faker::Number.between(from: 1, to: 10))
end

10.times do
u = User.create(first_name:Faker::Name.first_name, last_name:Faker::Name.last_name, description:Faker::Movies::PrincessBride.quote, email:Faker::Internet.email,age:Faker::Number.number(digits: 2))
end

20.times do
g = Gossip.create(title:Faker::Book.title, content:Faker::Movies::StarWars.quote,user_id:Faker::Number.between(from: 1, to: 10),tag_id:Faker::Number.between(from: 1, to: 10))
end

10.times do
t = Tag.create(title:Faker::Books::Dune.title,gossip_id:Faker::Number.between(from: 1, to: 10))
end

10.times do
pm = PrivateMessage.create(content:Faker::Quotes::Shakespeare.as_you_like_it_quote,sender_id:Faker::Number.between(from: 1, to: 10),recipient_id:Faker::Number.between(from: 1, to: 10))
end

puts "Les DONNEES sont INSEREES avec SUCCES"
