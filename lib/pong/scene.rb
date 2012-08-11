module Pong
  class Scene
    attr_accessor :left_player
    attr_accessor :right_player
    attr_accessor :ball

    def initialize
      @ball = Ball.new Window

      @left_player = Player.new Pong::LEFT
      @right_player = Player.new Pong::RIGHT
    end

    def reset
      @left_player.reset
      @right_player.reset
      @ball.reset
    end
    def update
      @left_player.update
      @right_player.update
      @ball.update
    end

    def draw
      @left_player.draw
      @right_player.draw
      @ball.draw
    end
  end
end
