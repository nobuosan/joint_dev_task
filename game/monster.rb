require './character'
class Monster < Character
  def attack(brave)
    damage = @attack-brave.defense
    brave.hp -= damage
    brave.hp=0 if brave.hp <= 0
    puts <<~EOF
    モンスターが攻撃
    勇者に#{damage}のダメージ
    勇者の残りのHP: #{brave.hp}
    -------------------------
    EOF

  end
end
