# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "deleting seeds"
User.destroy_all
Post.destroy_all
Wall.destroy_all

puts "seeding Users"

steven = User.create!(username: "steven", password:"123", first_name:"Steven", last_name: "Wu",avatar: "https://pm1.narvii.com/6636/ddaf1c402f3767d7c934aac8520aa12c023fd31c_00.jpg")

puts "seeding Wall"

stevenwall = Wall.create!(user: steven)

puts "seeding Posts"

post1 = Post.create!(content:"wasssupppp", img_url:"https://publicrawartistsorg.s3.amazonaws.com/images/comprofiler/crop_141188_avatar_1373406227.jpg", wall: stevenwall)



