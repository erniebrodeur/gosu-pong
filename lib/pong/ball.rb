module Pong
	class Ball
		include Gosu

		attr_accessor :texture
		attr_accessor :x, :y, :z
		attr_accessor :vel_x, :vel_y, :angle

		def initialize(window)
			@texture = Image.new Window, 'media/ball.png', false
			reset
		end

		def reset
	    @x = (Window.width / 2.0) - (@texture.width / 2.0)
      @y = (Window.height / 2.0) - (@texture.height / 2.0)
			@z = 50.0
			@vel_x = @vel_y = 10.0
			@angle = -15.0
		end

		def score_check
			if @x - 15 >= Window.width
				Window.scene.reset
				Window.scene.right_player.score.score += 1
			end

			if @x + 15 <= 0
				Window.scene.reset
				Window.scene.left_player.score.score += 1
			end
		end

		def update
			@vel_x = Gosu::offset_x(@angle, 5.0)
			@vel_y = Gosu::offset_y(@angle, 5.0)

			@x += @vel_x
			@y += @vel_y

			# check the top and bottom wall for collisions.
			if @y < @texture.height / 2.0 || @y > Window.height - (@texture.height / 2.0)
				@angle = 180.0 - @angle
				@vel_x = -@vel_x
				@vel_y = -@vel_y
			end

			score_check
		end

		def draw
			@texture.draw @x, @y, @z
		end
	end
end
