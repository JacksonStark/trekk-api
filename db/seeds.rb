# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Marker.destroy_all
# Trekk.destroy_all
# User.destroy_all

user1 = User.find_or_create_by! email: 'jacksonstark77@hotmail.com', password: 'beach'
user2 = User.find_or_create_by! email: 'adamleseur@gmail.com', password: 'housewives'
user3 = User.find_or_create_by! email: 'frankzou2000@hotmail.com', password: 'pokemon'

# Trekk.destroy_all

user1.trekks.create(
  name: 'Ocean Views',
  access_code: 'qwerty'
)

user2.trekks.create(
  name: 'Best sex shops',
  access_code: 'asdfgh'
)

user3.trekks.create(
  name: 'Pokemon',
  access_code: 'zxcvbn'
)

trekk1 = Trekk.find_by(name: 'Ocean Views')
trekk2 = Trekk.find_by(name: 'Best sex shops')
trekk3 = Trekk.find_by(name: 'Pokemon')

trekk1.markers.create(
  marker_image: 'https://img.ev.mu/images/regions/91/600x400/91.jpg',
  spawned_description: "This is Guadalupe.",
  spawned_image: '',
  spawned_video: ''
)

trekk1.markers.create(
  marker_image: 'https://img.ev.mu/images/attractions/1336/600x400/1851.jpg',
  spawned_description: '',
  spawned_image: "http://static.pokemonpets.com/images/monsters-images-800-800/81-Magnemite.png",
  spawned_video: ''
)

trekk1.markers.create(
  marker_image: 'https://www.kitchentreaty.com/wp-content/uploads/2017/02/how-to-make-heart-shaped-pizzas-featured-660x430.jpg',
  spawned_description: '',
  spawned_image: '',
  spawned_video: 'https://v.ftcdn.net/02/29/37/75/700_F_229377542_Y4dQ5kuAj6FPafId0XIdZ9jKcDQykYF8_ST.mp4'
)

trekk1.markers.create(
  marker_image: 'https://img.pokemondb.net/artwork/large/charizard-mega-y.jpg',
  spawned_description: 'POKEMON EVOLUTIONSSSSS',
  spawned_image: 'http://static.pokemonpets.com/images/monsters-images-800-800/81-Magnemite.png',
  spawned_video: 'https://v.ftcdn.net/02/29/37/75/700_F_229377542_Y4dQ5kuAj6FPafId0XIdZ9jKcDQykYF8_ST.mp4'
)

trekk1.markers.create(
  marker_image: 'https://img.pokemondb.net/artwork/large/charizard-mega-y.jpg',
  spawned_description: 'POKEMON EVOLUTIONSSSSS',
  spawned_image: 'http://static.pokemonpets.com/images/monsters-images-800-800/81-Magnemite.png',
  spawned_video: 'https://v.ftcdn.net/02/29/37/75/700_F_229377542_Y4dQ5kuAj6FPafId0XIdZ9jKcDQykYF8_ST.mp4'
)

trekk2.markers.create(
  marker_image: 'https://img.ev.mu/images/regions/91/600x400/91.jpg',
  spawned_description: 'WOW',
  spawned_image: '',
  spawned_video: ''
)

trekk2.markers.create(
  marker_image: 'https://img.ev.mu/images/attractions/1336/600x400/1851.jpg',
  spawned_description: 'BLOATED',
  spawned_image: '',
  spawned_video: ''
)

trekk3.markers.create(
  marker_image: 'https://i.imgur.com/1jBybmE.png',
  spawned_description: 'The Pokemon Tour',
  spawned_image: 'https://techgirl.co.za/wp-content/uploads/2016/07/maxresdefault-1-1080x675.jpg',
  spawned_video: ''
)

trekk3.markers.create(
  marker_image: 'https://superawesomevectors.com/wp-content/uploads/2017/05/pikachu-pokemon-vector-800x566.jpg',
  spawned_description: 'Pika Pi Pika',
  spawned_image: 'https://static.pokemonpets.com/images/monsters-images-800-800/26-Raichu.png',
  spawned_video: 'https://v.ftcdn.net/01/17/73/42/700_F_117734269_95KwuE6K0lpZZASDaqo7eNx3PhF4Y1EX_ST.mp4'
)

trekk3.markers.create(
  marker_image: 'https://cdn.bulbagarden.net/upload/thumb/f/f9/244Entei.png/250px-244Entei.png',
  spawned_description: '',
  spawned_image: 'https://i0.wp.com/fanfest.com/wp-content/uploads/2017/08/Pokemon-Legendary-Beasts.png?fit=1244%2C766',
  spawned_video: ''
)

trekk3.markers.create(
  marker_image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7c/Wendy_Wiliams_2019_WBLS_Interview.png/220px-Wendy_Wiliams_2019_WBLS_Interview.png',
  spawned_description: '',
  spawned_image: 'https://static.pokemonpets.com/images/monsters-images-800-800/26-Raichu.png',
  spawned_video: 'https://v.ftcdn.net/01/17/73/42/700_F_117734269_95KwuE6K0lpZZASDaqo7eNx3PhF4Y1EX_ST.mp4'
)
