# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Game.destroy_all
User.destroy_all
Review.destroy_all
GameStudio.destroy_all

game_studios = [
    {name: "AAA Studio", location: "Somwhere Ville" },
    {name: "Indie Studio", location: "Portland" },
    {name: "B Rated Studio", location: "B Rate Ville" },
    {name: "Mobile Studio", location: "Mobiles" }
  ]

  game_studios.each {|game_studio| GameStudio.create(game_studio)}

games = [
  {title: "Game Title One", release_date: "2019-04-01", game_studio: GameStudio.all.sample },
  {title: "Game Title Two", release_date: "2020-05-01" , game_studio: GameStudio.all.sample  },
  {title: "Game Title Three", release_date: "2017-01-15", game_studio: GameStudio.all.sample  },
  {title: "Game Title Four", release_date: "2015-01-15", game_studio: GameStudio.all.sample  }
]

games.each {|game| Game.create(game)}

users = [
    {name: "David", password: "12356" },
    {name: "Daniel", password: "3456"} ,
    {name: "April", password: "4567"},
    {name: "Alice", password: "9899"}
  ]
  
  users.each {|user| User.create(user)}
  
purchases = [
    {user_id: User.all.sample.id, game_id: Game.all.sample.id},
    {user_id: User.all.sample.id, game_id: Game.all.sample.id},
    {user_id: User.all.sample.id, game_id: Game.all.sample.id},
    {user_id: User.all.sample.id, game_id: Game.all.sample.id}
]

purchases.each {|purchase| Purchase.create(purchase)}

  reviews = [
    {reviewed_game: "This Game sucked", rating: 0, purchase_id: Purchase.all.sample.id },
    {reviewed_game: "This Game was great", rating: 5, purchase_id: Purchase.all.sample.id },
    {reviewed_game: "This Game was ok", rating: 4, purchase_id: Purchase.all.sample.id },
    {reviewed_game: "This Game was Bleah", rating: 3, purchase_id: Purchase.all.sample.id }
  ]
  
  reviews.each {|review| Review.create(review)}
  
    