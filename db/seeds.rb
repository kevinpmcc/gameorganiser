# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#


user1 = User.create! ({ name: 'Chris', email: 'chris@chris.com', password: 'password' })
user2 = User.create! ({ name: "D'Arcy", email: 'darcy@darcy.com', password: 'password' })
user3 = User.create! ({ name: 'Emer', email: 'emer@emer.com', password: 'password' })
user4 = User.create! ({ name: 'Kev', email: 'kevin@kevin.com', password: 'password' })
user5 = User.create! ({ name: 'Dubh', email: 'dubh@dubh.com', password: 'password' })
user6 = User.create! ({ name: 'Riabh', email: 'riabh@riabh.com', password: 'password' })

boardgame1 = Boardgame.create! ({ title: 'Monopoly: Cork Edition' })
boardgame2 = Boardgame.create! ({ title: 'Monopoly: The Godfather Edition' })
boardgame3 = Boardgame.create! ({ title: 'Tsoro' })
Boardgame.create! ({ title: 'Zombies!!!' })
Boardgame.create! ({ title: 'Marrakech' })
Boardgame.create! ({ title: 'Munchkin' })
Boardgame.create! ({ title: 'Codenames' })
Boardgame.create! ({ title: 'Viceroy' })
Boardgame.create! ({ title: 'Hive' })
Boardgame.create! ({ title: 'Viceroy' })
Boardgame.create! ({ title: 'Sushi GO!' })
Boardgame.create! ({ title: 'Small World' })
Boardgame.create! ({ title: 'Connect 4' })
Boardgame.create! ({ title: 'Betrayal at House on the Hill' })
Boardgame.create! ({ title: 'Carcasonne' })
Boardgame.create! ({ title: 'Go' })
Boardgame.create! ({ title: 'Ticket to Ride: Europe' })
Boardgame.create! ({ title: 'Risk: Game of Thrones(Skirmish)' })
Boardgame.create! ({ title: 'Mysterium' })
Boardgame.create! ({ title: 'Settlers of Catan' })
Boardgame.create! ({ title: 'Pandemic' })
Boardgame.create! ({ title: 'Forbidden Desert' })
Boardgame.create! ({ title: 'Coup: The Resistance' })
Boardgame.create! ({ title: 'The Ravens of Thri Sahashri' })
Boardgame.create! ({ title: 'Discworld: Ankh-Morpork' })
Boardgame.create! ({ title: 'Trivial Pursuit' })

available_times = ['14:00', '14:30', '15:00', '15:30', '16:00', '16:30', '17:00', '17:30', '18:00', '18:30', '19:00', '19:30', '20:00', '20:30', '21:00']

available_times.each { |time| AvailableTime.create! ({ avail_time: time }) }

game1 = boardgame1.games.create({start_time: available_times[0], boardgame_id: boardgame1.id})
game1.players.new(user_id: user1.id, game_id: game1.id)
game1.players.new(user_id: user2.id, game_id: game1.id)
game1.save

game2 = boardgame2.games.create({start_time: available_times[9], boardgame_id: boardgame2.id})
game2.players.new(user_id: user3.id, game_id: game2.id)
game2.players.new(user_id: user4.id, game_id: game2.id)
game2.players.new(user_id: user5.id, game_id: game2.id)
game2.save
