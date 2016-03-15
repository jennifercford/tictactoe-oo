
class Human

  def initialize(piece)
    @piece = piece
#    @peices = ["X","O"]
  end

    def piece
      @piece
    end

    def move
      gets.chomp.to_i
    end
end
