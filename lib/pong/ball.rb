module Pong
	class Ball
		include Gosu

		attr_accessor :texture
		attr_accessor :x, :y, :z
		attr_accessor :vel_x, :vel_y, :angle

		def initialize(window)
			@x = @y = @z = 50.0
			@vel_x = @vel_y = 10.0
			@angle = 30.0

			@texture = Image.new Window, 'media/ball.png', false
		end

		def update
			@vel_x = Gosu::offset_x(@angle, 2.5)
			@vel_y = Gosu::offset_y(@angle, 2.5)

			@x += @vel_x
			@y += @vel_y

			@angle -= 90.0 if @y < 0
			@angle += 90.0 if @y > Window.height - @texture.height / 2.0
			puts "#{@x}, #{y}"
		end

		def draw
			@texture.draw @x, @y, @z
		end
	end
end
