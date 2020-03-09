require './character'
class Monster < Character

    def attack(brave)
        brave.hp = brave.hp - (@attack - brave.defense)
    end
end
