require './character'
class Brave < Character
  def attack(monster)
    damage = @attack-monster.defense
    monster.hp -= damage
    if monster.hp <= 0
      monster.hp=0
    end
    puts <<~EOF
    勇者が攻撃
    モンスターに#{damage}のダメージ
    モンスターの残りHP: #{monster.hp}
    -------------------------
    EOF

  end
end
