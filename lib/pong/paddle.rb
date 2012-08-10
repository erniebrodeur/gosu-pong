module Pong
	class Paddle
		include Gosu

		attr_accessor :texture
		attr_accessor :x, :y, :z
		attr_reader :player
		def initialize(player)
			@player = player
			@x = @y = @z = 0.0
			@texture = Image.new Window, 'media/paddle.png', false
			@y = (Window.height / 2.0) - (@texture.height / 2.0)

	    if @player.side == LEFT
	    	@x = 45
	    elsif @player.side == RIGHT
      	@x = Window.width - 75
	    else
	    	puts "WTF is this? @side == #{@side}"
	    	exit
	    end
		end

		def update
			if player.side == LEFT
					@y = @y - 5.0 if Window.button_down? Gosu::KbW
					@y = @y + 5.0 if Window.button_down? Gosu::KbS
			else
					@y = @y - 5.0 if Window.button_down? Gosu::KbUp
					@y = @y + 5.0 if Window.button_down? Gosu::KbDown
			end

			#bounding
			@y = 0 if @y < 0
			@y = Window.height - @texture.height if @y + @texture.height > Window.height
		end

		def draw
			@texture.draw @x, @y, @z
		end
	end
end
