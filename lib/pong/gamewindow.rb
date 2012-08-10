module Pong
  class GameWindow < Gosu::Window
    attr_accessor :height
    attr_accessor :width
    attr_accessor :scene

    def initialize
      @width  = 640
      @height = 480

      super @width, @height, false
      self.caption = "Gosu Tutorial Game::Pong"
    end

    def update
      @scene.update
    end

    def draw
      @scene.draw
   end
 end

 Window = GameWindow.new
end
