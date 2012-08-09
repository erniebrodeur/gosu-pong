module Pong
  class GameWindow < Gosu::Window
    attr_accessor :height
    attr_accessor :width

    def initialize
      @width  = 640
      @height = 480

      super @width, @height, false
      self.caption = "Gosu Tutorial Game::Pong"

      @ball = Ball.new self
      @ball.x = (@width / 2.0) - (@ball.texture.width / 2.0)
      @ball.y = (@height / 2.0) - (@ball.texture.height / 2.0)

      @left_player = Player.new self, Pong::LEFT
      @right_player = Player.new self, Pong::RIGHT
    end

    def update
      @left_player.update
      @right_player.update
    end

    def draw
      @left_player.draw
      @right_player.draw
      @ball.draw
   end
 end
end
