# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "deleting seeds"
Friendship.destroy_all
User.destroy_all
Post.destroy_all
Wall.destroy_all

puts "seeding Users"

steven = User.create!(username: "steven", password:"123", first_name:"Steven", last_name: "Wu",avatar: "https://pm1.narvii.com/6636/ddaf1c402f3767d7c934aac8520aa12c023fd31c_00.jpg", vaccinated:false,age:29, hometown:"Flushing")
victor = User.create!(username: "victor", password:"12", first_name:"Victor", last_name: "Torres",avatar: "https://pm1.narvii.com/6636/ddaf1c402f3767d7c934aac8520aa12c023fd31c_00.jpg", vaccinated:false,age:22, hometown:"New York")

puts "seeding Wall"

stevenwall = Wall.create!(user: steven)
victorwall = Wall.create!(user: victor)

puts "seeding Posts"

post1 = Post.create!(content:"wasssupppp", img_url:"https://publicrawartistsorg.s3.amazonaws.com/images/comprofiler/crop_141188_avatar_1373406227.jpg", wall: stevenwall)
post2 = Post.create!(content:"Booooooom" ,img_url:"https://static.wikia.nocookie.net/rickandmorty/images/6/6c/MeeseeksHQ.png/revision/latest/top-crop/width/360/height/450?cb=20150930232412",wall: victorwall)

puts "seeding friendships"

friendship1 = Friendship.create!(user: steven, friend: victor)
friendship2 = Friendship.create!(user: victor, friend: steven)





