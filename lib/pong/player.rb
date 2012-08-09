module Pong
	LEFT = 1
	RIGHT = 2

	class Player
		attr_accessor :side
		attr_reader :score
		attr_reader :paddle

		def initialize(window, side)
			@side = side
	    @paddle = Paddle.new window

  	  @paddle.y = (window.height / 2.0) - (@paddle.texture.height / 2.0)

	    if @side == LEFT
	    	@paddle.x = 45
	    elsif @side == RIGHT
      	@paddle.x = window.width - 75
	    else
	    	puts "WTF is this? @side == #{@side}"
	    	die
	    end
      @score = Score.new window
		end

		def update
			@score.update
		end

		def draw
			@paddle.draw
			@score.draw
		end
	end
end
