
class Computer
  def initialize
    @pieces = ["X","O"]
  end

  def choose_piece
    # @pieces = ["X","O"]
    choice = @pieces.sample
    @pieces.pop(choice)
    @piece = choice
  end

  def piece
    @piece
  end

  def move
    move = rand(1..9)
    move
  end
end
