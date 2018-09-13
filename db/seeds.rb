# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Track.destroy_all
Album.destroy_all
Artist.destroy_all


20.times do
  Artist.create(
    name: Faker::Artist.name,
    localisation: Faker::TwinPeaks.location,
    description: Faker::GameOfThrones.quote
  )
  print '.'
end
puts 'artists created'

20.times do
  Album.create(
    name: Faker::Pokemon.name,
    cover: 'https://images.unsplash.com/photo-1496293455970-f8581aae0e3b?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=fb87cdb308815f5e6decf7d1a3a4e7ca&auto=format&fit=crop&w=1001&q=80',
    format_price_vinyl: 12,
    format_price_digital: 0,
    stock: rand(10...100),
    description: Faker::MichaelScott.quote
  )
  print '🎧'

  4.times do
    Track.create(
    name: Faker::LordOfTheRings.character,
    description: Faker::HarryPotter.quote,
    album: Album.last,
    artist: Artist.all.sample
  )
  print '🎼'
  end
  puts '4 tracks created'

end
puts '20 albums created'


