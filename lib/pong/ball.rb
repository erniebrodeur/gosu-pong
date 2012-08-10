module Pong
	class Ball
		include Gosu

		attr_accessor :texture
		attr_accessor :x, :y, :z
		attr_accessor :vel_x, :vel_y, :angle

		def initialize(window)
			@x = @y = @z = 50.0
			@vel_x = @vel_y = 10.0
			@angle = 45.0

			@texture = Image.new Window, 'media/ball.png', false
		end

		def update
			@vel_x = Gosu::offset_x(@angle, 1.5)
			@vel_y = Gosu::offset_y(@angle, 1.5)

			@x += @vel_x
			@y += @vel_y
		end

		def draw
			@texture.draw @x, @y, @z
		end
	end
end
