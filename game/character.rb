class Character
    attr_accessor :hp
    attr_reader :attack,:defense
    def initialize(**character)
        @hp = character[:hp]
        @attack = character[:attack]
        @defense = character[:defense]
    end
end
