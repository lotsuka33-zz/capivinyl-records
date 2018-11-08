# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

user1 = User.new
user1.email = "ssaunier@lewagon.com"
user1.password = "ssaunier"
user1.save

puts 'Creating 10 fake vinyls for Seb (user_id #1)...'
10.times do
  vinyl = Vinyl.new(
    user_id: 1,
    album: Faker::Music.album,
    artist: Faker::Music.band,
    year: rand(1950..2018),
    genre: Faker::Music.genre,
    description: Faker::Lorem.paragraph_by_chars,
    picture: "https://picsum.photos/#{rand(300..800)}"
  )
  vinyl.save!
end

user1 = User.new
user1.email = "papillard@lewagon.com"
user1.password = "papillard"
user1.save

puts 'Creating 10 fake vinyls for Boris (user_id #2)...'
10.times do
  vinyl = Vinyl.new(
    user_id: 2,
    album: Faker::Music.album,
    artist: Faker::Music.band,
    year: rand(1950..2018),
    genre: Faker::Music.genre,
    description: Faker::Lorem.paragraph_by_chars,
    picture: "https://picsum.photos/#{rand(300..800)}"
  )
  vinyl.save!
end
puts 'Finished!'
