
class Computer
  def initialize(piece)
    @piece = piece
    # @pieces = ["X","O"]
  end

  # def choose_piece
  #   choice = @pieces.sample
  #   @pieces.delete(choice)
  #   @piece = choice
  # end

  def piece
    @piece
  end

  def move
    move = rand(1..9)
    move
  end
end
