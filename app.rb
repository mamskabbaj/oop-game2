require 'bundler'
Bundler.require
require 'pry'
require_relative 'lib/game'
require_relative 'lib/player'



player_1 = Player.new("Mamoun",20)
player_2 = Player.new("Ismail",20)
while (player_1.life_points && player_2.life_points) > 0 
puts "Voici l'état de chaque joueur :"

puts player_1.show_state
puts player_2.show_state

puts "Passons à la phase d'attaque :"

if player_1.life_points>0
    player_1.attacks(player_2)
else 
break
end 
if player_2.life_points>0
    player_2.attacks(player_1)
else 
break
end 
player_1.show_state
player_2.show_state
end 
