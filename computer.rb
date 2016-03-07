
class Computer
  # def initialize
  #   @player = @piece
  # end
  def choose_piece
    @pieces = ["X","O"]
    choice = @pieces.sample
    @pieces.pop(choice)
    @piece = choice
  end

  def piece
    @piece
  end

  def move
    spaces=[1,2,3,4,5,6,7,8,9]
    move = spaces.sample
    move
  end
end
