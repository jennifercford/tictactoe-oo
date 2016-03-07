require "pry"
require "minitest/autorun"

require "./computer"
require "./human"
require "./game"
require "./board"


class GameTest < MiniTest::Test
  # def test_intialize_of_HumanPlayers
  #   julia = Human.new "Julia"
  # end
end

class HumanTest < MiniTest::Test
end

class ComputerTest < MiniTest::Test

  def test_player_knows_their_piece
    player = Computer.new
    player.stub :sample, "X" do
      player.choose_piece
    end
    assert player.piece == "X"
  end


end

class BoardTest < MiniTest::Test
  def test_can_build_a_board
    board = Board.new
    assert board
  end
  def test_for_availible_moves
    board = Board.new
    assert board.availible_moves
  end
  # def test_can_i_win?
  #   board = Board.new
  #   board[0]="X"
  #   board[1]="X"
  #   board[2]="X"
  #   assert board.win?
  # end
end
