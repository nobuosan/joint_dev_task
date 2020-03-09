class Character
  attr_accessor :hp
  attr_reader :attack,:defense
  def initialize(**params)
    @hp = params[:hp]
    @attack = params[:attack]
    @defense = params[:defense]
  end
end
