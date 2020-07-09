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
    {name: "Blizzard", location: "Blizzard Entertainment P.O. Box 18979 Irvine, CA 92623" },
    {name: "Sqaure Enix", location: "Japan" },
  ]

  game_studios.each {|game_studio| GameStudio.create(game_studio)}

games = [  
  {title: "Warcraft 3", release_date: "2002-03-07", game_studio: GameStudio.all.first },
  {title: "Diablo", release_date: "1996-12-31" , game_studio: GameStudio.all.first  },
  {title: "Diablo 2", release_date: "2000-06-29", game_studio: GameStudio.all.first },
  {title: "Diablo 3", release_date: "2012-05-01", game_studio: GameStudio.all.first  },
  {title: "Starcraft", release_date: "1998-03-31", game_studio: GameStudio.all.first  },
  {title: "Starcraft 2", release_date: "2010-07-27", game_studio: GameStudio.all.first  },
  {title: "World of Warcraft", release_date: "2004-11-23", game_studio: GameStudio.all.first },
  {title: "Final Fantasy 7", release_date: "1997-01-31", game_studio: GameStudio.all.second },
  {title: "Final Fantasy 10", release_date: "2001-07-19", game_studio: GameStudio.all.second  }
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
    {user_id: User.all.sample.id, game_id: Game.all.sample.id},
    {user_id: User.all.sample.id, game_id: Game.all.sample.id},
    {user_id: User.all.sample.id, game_id: Game.all.sample.id},
    {user_id: User.all.sample.id, game_id: Game.all.sample.id},
    {user_id: User.all.sample.id, game_id: Game.all.sample.id},
    {user_id: User.all.sample.id, game_id: Game.all.sample.id},
]

purchases.each {|purchase| Purchase.create(purchase)}

  reviews = [
    {reviewed_game: "One of the best games on PS4 hands down.
      I have played Diablo since the first one on PC and even though nothing can beat 2 in my opinion this is close.
      The vanilla version is nothing compared to Reaper of Souls, it added a whole new game to Diablo, with rifts and greater rifts and the new chapter V and also adventure mode where its endless and you can farm high end gear. Blizzard are still releasing patches adding new seasons and content so you get ALOT of gameplay and content for the price.
      Its so good I have got platinum on 3 different versions and still go back to it every now and again.
      It also has multiplayer of up to 4 players which is also fun, challenging and more rewarding.
      I bought this for my son for Christmas so we can play multiplayer even though I have full level 70 characters", rating: 5, purchase_id: Purchase.all.sample.id },
    {reviewed_game: "Ignore the negative reviews, all the dlc downloads automatically so who cares if it’s on the disc or not. Played the original version on PS3 which was good but this PS4 version is 100 times better! If you love character building RPGs like Baldur’s Gate and Champions of Norrath get this now", rating: 5, purchase_id: Purchase.all.sample.id },
    {reviewed_game: " The base game is good i had it on previous console generation. But the expansions really make the game re-playable. Just a disappointing price for a very old game.

      they do bring out new seasons and some content tweaks, so it does keep the game fresh. worth a play.", rating: 5, purchase_id: Purchase.all.sample.id },
    {reviewed_game: "This Game was ok", rating: 3, purchase_id: Purchase.all.sample.id }
  ]
  
  reviews.each {|review| Review.create(review)}
  
    