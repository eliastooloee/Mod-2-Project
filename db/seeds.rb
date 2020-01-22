# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Rock.create(nick_name: 'Granodiorite', category: 'Igneous', minerals: 'Quartz, Plagioclase, Biotite', outcrop: 'Yes' )
Rock.create(nick_name: 'Quartz Arenite', category: 'Sedimentary', minerals: 'Quartz', outcrop: 'Yes' )
Rock.create(nick_name: 'Granite', category: 'Igneous', minerals: 'Quartz, Plagioclase, Hornblende', outcrop: 'Yes' )
Rock.create(nick_name: 'Marble', category: 'Metamorphic', minerals: 'Calcite', outcrop: 'No' )
Rock.create(nick_name: 'Andesite', category: 'Igneous', minerals: 'Plagioclase, Orthopyroxene', outcrop: 'Yes' )
Rock.create(nick_name: 'Dolostone', category: 'Sedimentary', minerals: 'Dolomite', outcrop: 'Yes' )
Rock.create(nick_name: 'Phosporia', category: 'Metamorphic', minerals: 'Quartz, Phosphite', outcrop: 'No' )
Rock.create(nick_name: 'Greenschist', category: 'Metamorphic', minerals: 'Epidote, Chlorite, Serpentine', outcrop: 'Yes' )
Rock.create(nick_name: 'Chondrite', category: 'Igneous', minerals: 'Olivine', outcrop: 'No' )
Rock.create(nick_name: 'Kimberlite', category: 'Igneous', minerals: 'Olivine, Diamond, Clinopyroxene', outcrop: 'Yes' )

10.times do 
    User.create(username: Faker::Name.unique.first_name, home_location: Faker::Address.city, professional: 'No')
end

10.times do 
    Location.create(latitude: Faker::Address.latitude, longitude: Faker::Address.longitude, rock_types: Rock.all.sample.nick_name)
end

10.times do
    UserRock.create(user_id: User.all.sample.id, rock_id: Rock.all.sample.id)
end

10.times do 
    RockLocation.create(rock_id: Rock.all.sample.id, location_id: Location.all.sample.id)
end