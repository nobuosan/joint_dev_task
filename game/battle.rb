require './monster'
require './brave'

monster = Monster.new(hp:200,attack:10,defense:10)
brave = Brave.new(hp:200,attack:20,defense:3)

puts <<EOS
-------------------------
モンスターのHP: #{monster.hp}
勇者のHP: #{brave.hp}
-------------------------
EOS

while brave.hp>0 && monster.hp >0
  # 勇者が攻撃
  brave.attack(monster)
  break if monster.hp <= 0
  #モンスターが攻撃
  monster.attack(brave)
  break if brave.hp <= 0
end

if monster.hp<=0
  puts "勇者はモンスターを倒した"
elsif brave.hp <=0
  puts "勇者はモンスターに敗れた"
end
