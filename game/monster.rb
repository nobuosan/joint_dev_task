require './character'
class Monster < Character
  def attack(brave)
    damage = @attack-brave.defense
    brave.hp -= damage
    if brave.hp <= 0
      brave.hp=0
    end
    puts <<~EOF
    モンスターが攻撃
    勇者に#{damage}のダメージ
    勇者の残りのHP: #{brave.hp}
    -------------------------
    EOF

  end
end
