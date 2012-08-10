module Pong
  class Score
    include Gosu

    attr_accessor :texture
    attr_accessor :text
    attr_accessor :x, :y, :z
    attr_accessor :score

    def initialize(player)
      @x = @z = 0.0
      if player.side = LEFT
        @y = 20
      else
        @y = Window.width - 100
      end
      @score = 0
      @text = Font.new Window, 'aerial', 25
    end

    def update
      @score = @score + 1
    end

    def draw
      @text.draw("score: #{score}", @x, @y, @z)
    end
  end
end
