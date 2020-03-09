require './character'
class Brave < Character

    def attack(monster)
        monster.hp = monster.hp - (@attack-monster.defense)
    end
end
