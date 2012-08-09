module Pong
	class Ball
		include Gosu

		attr_accessor :texture
		attr_accessor :x, :y, :z

		def initialize(window)
			@x = @y = @z = 50.0
			@texture = Image.new window, 'media/ball.png', false
		end

		def update
		end

		def draw
			@texture.draw @x, @y, @z
		end
	end
end
