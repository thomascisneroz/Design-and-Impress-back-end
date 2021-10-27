# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Hobby.destroy_all
Hwsaa.destroy_all
Request.destroy_all
Review.destroy_all
User.destroy_all

puts "Begin Seeding 🌱"

puts"Seeding The HWSAA 👺 ..."

tom = Hwsaa.create(name: 'Tom', password: 'woobly123')

puts "Hwsaa  seeded"

puts" Seeding Hobbies..."

hobby1 = Hobby.create(name: 'Anime', image: 'https://upload.wikimedia.org/wikipedia/en/8/89/Blue_Period_Volume_1_cover.jpg',hwsaa_id: tom.id, description: 'Anime is one of my major motivational factors and pushers to be more creative.')
hobby2 = Hobby.create(name: 'Painting/Art', image: 'https://i.pinimg.com/564x/df/50/85/df5085b938bc49a22d8142d7dfc9ce54.jpg',hwsaa_id: tom.id, description: 'Art and painting recently have been what keeps stimulating my body to continue creating.')
hobby3 = Hobby.create(name: 'Dungeons and Dragons', image: 'https://i.pinimg.com/564x/27/96/81/279681b790a517ae7aa7a44578ed2c16.jpg', hwsaa_id: tom.id, description: 'Dungeons and Dragons is one of my favorite games for meeting new people, player, their characters, and thinking outside the box all while playing a fantasy RPG what is there not to love about it.')
hobby4 = Hobby.create(name: 'Music', image: 'https://i.pinimg.com/564x/b8/56/2a/b8562aa37853f86e69dc1e8b9e929cd7.jpg', hwsaa_id: tom.id, description: 'Music is something you can always catch me listening/working to. Always looking to add new music to my library any and all genres.')
hobby5 = Hobby.create(name: 'Movies', image: 'https://i.pinimg.com/564x/f9/0e/eb/f90eeb25e06bfa6ac37cf5cc9ca0aebf.jpg', hwsaa_id: tom.id, description: 'Movies have always been a part of my life as a viewer, researcher for stories, and as an editor, one of another passions of mine is disecting and really getting into all aspects of movie making from casting, set design, audio work, effect rendering, and the full product at the end and how movies bring something to everyone with their many varieties.')
hobby6 = Hobby.create(name: 'Videogames', image: 'https://wallpapercave.com/wp/wp4610112.jpg', hwsaa_id: tom.id, description: 'Videogames are a great relaxer for me be they single player or multiplayer game. Most loved in my collection would be the monster hunter games and hunting with friends and new players is really amazing.')

puts "hobbies seeded"
puts "Seeding Users..."

user1 = User.create(name: 'Brad', email: 'brad123@gmail.com', password: '1234')
user2 = User.create(name: 'Melissa', email: 'smeligant@gmail.com', password: '4242')
user3 = User.create(name: 'Tony', email: 'tonytooltips@gmail.com', password: '6565')

puts "Users seeded"
puts "seeding Reviews..."

rev1 = Review.create(title: 'Parallax effect', user_id: user2.id, comment: 'Loved the varying speeds of the layers!')
rev2 = Review.create(title: 'Fading Text', user_id: user3.id, comment: 'The duration on the transition of the text was cool.')
rev3 = Review.create(title: 'Fading text', user_id: user1.id, comment: 'I feel like you couldve done more with text other than an empty space and the fading text.')

puts "Reviews seeded"
puts "seeding Request..."

req1 = Request.create(name: 'Animation', title: 'Page animation', user_id: user2.id, public: false, details: 'Animate a div for me to be mount and unmounted for easier show of examples of my components for my site.')
req2 = Request.create(name: 'Create component',title: 'Div creation', user_id: user1.id, public: true, details: 'Create a <div> that says div in it.')

puts "seeding done 🌻"
