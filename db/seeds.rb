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
  name: 'Lighthouse Tour',
  access_code: 'qwerty'
)

user1.trekks.create(
  name: 'Scavenger Hunt',
  access_code: 'zxcvbn'
)

user1.trekks.create(
  name: 'Art Gallery',
  access_code: 'asdfgh'
)

user1.trekks.create(
  name: 'Convention Center',
  access_code: 'jdushd'
)

user1.trekks.create(
  name: 'Mall Tour',
  access_code: 'jaivdh'
)

trekk1 = Trekk.find_by(name: 'Lighthouse Tour')

trekk1.markers.create(
  marker_image: 'https://i.ibb.co/nfj56Jk/trekk-Marker1.png',
  spawned_description: "Have some fun in the Rainbow Room, where you'll often find project teams planning and presenting.",
  spawned_image: 'https://www.journeymexico.com/project-team?showimg_aldggj=project+team.jpg',
  spawned_video: ''
)

trekk1.markers.create(
  marker_image: 'https://i.ibb.co/y5xRWxL/trekk-Marker2.png',
  spawned_description: 'Welcome to our lounge, where students and alumni come to hit pause on their busy lives and take it easy.',
  spawned_image: "http://static.pokemonpets.com/images/monsters-images-800-800/81-Magnemite.png",
  spawned_video: ''
)

trekk1.markers.create(
  marker_image: 'https://i.ibb.co/64Yw6tC/trekk-Marker3.png',
  spawned_description: "This is our coffee machine. Arguably the heart of Lighthouse Labs. Don't be shy, drink some Chai.",
  spawned_image: 'https://www.betterhealthforwomen.com/wp-content/uploads/2019/02/china-coffee-cup.jpg',
  spawned_video: ''
)

trekk1.markers.create(
  marker_image: 'https://i.ibb.co/xmxKyzT/trekk-Marker4.png',
  spawned_description: "This is what we call... The Other Side. It is leased by other tech companies of many varieties.",
  spawned_image: 'https://wheretogoin.net/wp-content/uploads/2019/04/there-are-two-sides-to-every-story-e1554505904383.jpg',
  spawned_video: ''
)

trekk1.markers.create(
  marker_image: 'https://i.ibb.co/80zPKms/trekk-Marker5.png',
  spawned_description: "If you're unsure how to use these modernized elevators, don't worry! They're smarter than you think!",
  spawned_image: 'https://geekologie.com/2015/08/10/personal-home-elevat0r.jpg',
  spawned_video: ''
)

trekk1.markers.create(
  marker_image: 'https://i.ibb.co/txyMvg3/trekk-Marker6.png',
  spawned_description: 'Here we have Nima, lover of Kanye and turtlenecks',
  spawned_image: 'https://images.glaciermedia.ca/polopoly_fs/1.416929.1374534817!/fileImage/httpImage/image.jpg_gen/derivatives/landscape_804/img-0-6264716-jpg.jpg',
  spawned_video: ''
)

trekk1.markers.create(
  marker_image: 'https://i.ibb.co/0hVcSy2/me.jpg',
  spawned_description: 'Adam Leseur and the Wendy Williams',
  spawned_image: 'https://images.complex.com/complex/images/c_limit,dpr_auto,q_90,w_720/fl_lossy,pg_1/o4adpfwd3m5041chd8k5/wendy-william-sirius',
  spawned_video: ''
)

