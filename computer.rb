
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

  def make_move
    gets.chomp.to_i
  end
end
