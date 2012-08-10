module Pong
	class Scene
	  attr_accessor :left_player
    attr_accessor :right_player
    attr_accessor :ball

		def initialize
      @ball = Ball.new Window
      @ball.x = (Window.width / 2.0) - (@ball.texture.width / 2.0)
      @ball.y = (Window.height / 2.0) - (@ball.texture.height / 2.0)

      @left_player = Player.new Pong::LEFT
      @right_player = Player.new Pong::RIGHT
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
