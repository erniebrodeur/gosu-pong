module Pong
  class Score
    include Gosu

    attr_accessor :texture
    attr_accessor :text
    attr_accessor :x, :y, :z
    attr_accessor :score

    def initialize(player)
      if player.side == LEFT
        @x = 20
      else
        @x = Window.width - 120
      end
      @y = 20.0
      @z = 0.0

      @score = 0
      @text = Font.new Window, 'aerial', 25
    end

    def update

    end

    def draw
      @text.draw("score: #{score}", @x, @y, @z)
    end
  end
end
