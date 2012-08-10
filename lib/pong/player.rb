module Pong
	LEFT = 1
	RIGHT = 2

	class Player
		attr_accessor :side
		attr_reader :score
		attr_reader :paddle

		def initialize(side)
			@side = side
	    @paddle = Paddle.new self

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
