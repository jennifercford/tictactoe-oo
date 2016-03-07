
class Board
  WINS = [[1,2,3],[4,5,6],[7,8,9],[1,4,7],[2,5,8,],[3,6,9],[1,5,9],
  [3,5,7]]

  def initialize
    @board = [1,2,3,4,5,6,7,8,9]
  end

  def availible_moves
    @board.select { |piece| piece.is_a?(Fixnum) }
  end

  def draw?
    @board.all? { |piece| piece.is_a?(String) }
  end
  def win?
    WINS.any? do |x, y, z|
    @board[x-1] == @board[y-1] && @board[y-1] == @board[z-1]
  end
end
def show_board
  puts "
    -----------
   | #{@board[0]} | #{@board[1]} | #{@board[2]} |
   | #{@board[3]} | #{@board[4]} | #{@board[5]} |
   | #{@board[6]} | #{@board[7]} | #{@board[8]} |
    -----------
"
end
end
