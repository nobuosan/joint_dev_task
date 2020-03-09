require './monster'
require './brave'

monster = Monster.new(hp:300,attack:10,defense:10)
brave = Brave.new(hp:200,attack:20,defense:3)
puts"-------------------------"
puts "モンスターのHP : #{monster.hp}"
puts "勇者のHP : #{brave.hp}"
puts"-------------------------"
# 勇者が攻撃
brave.attack(monster)
puts "勇者が攻撃"
puts "モンスターのHP : #{monster.hp}"
puts"-------------------------"
#モンスターが攻撃
puts "モンスターが攻撃"
monster.attack(brave)
puts "勇者のHP : #{brave.hp}"
