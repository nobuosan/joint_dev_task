class Brave
    def initialize(hp:,attack:,defense:)
        @hp = hp
        @attack = attack
        @defense = defense
    end
end

class Monster
    def initialize(hp:,attack:,defense:)
        @hp = hp
        @attack = attack
        @defense = defense
    end
end

class Battle
    brave = Brave.new(hp:200,attack:20,defense:30)
    monster = Monster.new(hp:300,attack:30,defense:40)
    puts (brave,monster)
end
