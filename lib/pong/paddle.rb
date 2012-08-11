module Pong
	class Paddle
		include Gosu

		attr_accessor :texture
		attr_accessor :x, :y, :z
		attr_reader :player
		attr_reader :offset

		def initialize(player)
			@player = player
			@texture = Image.new Window, 'media/paddle.png', false

			if @player.side == LEFT
	    	@offset = 45
	    else
	    	@offset = Window.width - 75
	    end

	    reset
		end

		def reset
			@x = @offset
			@y = (Window.height / 2.0) - (@texture.height / 2.0)
			@z = 0.0
		end

		def update
			if player.side == LEFT
					@y = @y - 5.0 if Window.button_down? Gosu::KbW
					@y = @y + 5.0 if Window.button_down? Gosu::KbS
			else
					@y = @y - 5.0 if Window.button_down? Gosu::KbUp
					@y = @y + 5.0 if Window.button_down? Gosu::KbDown
			end

			#top/bottom bounding
			@y = 0 if @y < 0
			@y = Window.height - @texture.height if @y + @texture.height > Window.height
		end

		def draw
			@texture.draw @x, @y, @z
		end
	end
end
