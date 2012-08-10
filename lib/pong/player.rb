module Pong
	LEFT = 1
	RIGHT = 2

	class Player
		attr_accessor :side
		attr_reader :score
		attr_reader :paddle

		def initialize(side)
			@side = side
	    @paddle = Paddle.new Window

  	  @paddle.y = (Window.height / 2.0) - (@paddle.texture.height / 2.0)

	    if @side == LEFT
	    	@paddle.x = 45
	    elsif @side == RIGHT
      	@paddle.x = Window.width - 75
	    else
	    	puts "WTF is this? @side == #{@side}"
	    	die
	    end
      @score = Score.new self
		end

		def update
			@paddle.update
			@score.update
		end

		def draw
			@paddle.draw
			@score.draw
		end
	end
end
