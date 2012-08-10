module Pong
	class Ball
		include Gosu

		attr_accessor :texture
		attr_accessor :x, :y, :z
		attr_accessor :vel_x, :vel_y, :angle

		def initialize(window)
			@x = @y = @z = 50.0
			@vel_x = @vel_y = 10.0
			@angle = 15.0

			@texture = Image.new Window, 'media/ball.png', false
		end

		def update
			@vel_x = Gosu::offset_x(@angle, 5.0)
			@vel_y = Gosu::offset_y(@angle, 5.0)

			@x += @vel_x
			@y += @vel_y

			if @y < @texture.height / 2.0 || @y > Window.height - (@texture.height / 2.0)
				@angle = 180.0 - @angle
				@vel_x = -@vel_x
				@vel_y = -@vel_y
			end

		end

		def draw
			@texture.draw @x, @y, @z
		end
	end
end
