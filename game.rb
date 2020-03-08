class Brave
    def initialize(hp:,attack:,defense:)
        @hp = hp
        @attack = attack
        @defense = defense
    end
    def print
        puts @hp ,@attack, @defense
    end
end

class Monster
    def initialize(hp:,attack:,defense:)
        @hp = hp
        @attack = attack
        @defense = defense
    end
end

# class Battle
#     brave = Brave.new(hp:200,attack:20,defense:10)
#     monster = Monster.new(hp:300,attack:10,defense:20)
#     # p brave,monster
#     puts brave.print
# end
