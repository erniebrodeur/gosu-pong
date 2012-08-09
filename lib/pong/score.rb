module Pong
  class Score
    include Gosu

    attr_accessor :texture
    attr_accessor :text
    attr_accessor :x, :y, :z
    attr_accessor :score

    def initialize(window)
      @x = @y = @z = 0.0
      @score = 0
      @texture = Image.from_text window, 'score', 'consola', 50, 0, 200, :left
      @text = Font.new window, 'aerial', 25
    end

    def update
      @score = @score + 1
    end

    def draw
      #@texture.draw @x, @y, @z
      @text.draw("score: #{score}", @x, @y, @z)

    end
  end
end
