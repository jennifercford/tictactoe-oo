require "pry"
require "minitest/autorun"

require "./computer"
require "./human"
# require "./game"
# require "./board"


class GameTest < MiniTest::Test
  def test_game_over?
    game = Game.new
    #extra bits get game_over to return false
    refute game.game_over?
  end

  def test_playagain?
    game = Game.new
    game.stub :gets, "y" do
      game.play_again?
    end
    assert game.play_again?
  end
end

class HumanTest < MiniTest::Test

  def test_player_can_their_piece
    jen = Human.new "jen"
    jen.stub :gets, "X" do
      jen.choose_piece
    end
    assert jen.piece == "X"
  end

end

class ComputerTest < MiniTest::Test

  def test_player_knows_their_piece
    player1 = Computer.new
    player1.stub :sample, "X" do
      player1.choose_piece
    end
    assert player1.piece == "X"
  end

end

class BoardTest < MiniTest::Test
  # def test_can_build_a_board
  #   board = Board.new
  #   assert board
  # end
  # def test_for_availible_moves
  #   board = Board.new
  #   assert board.availible_moves
  # end
  # def test_can_i_win?
  #   board = Board.new
  #   board[0]="X"
  #   board[1]="X"
  #   board[2]="X"
  #   assert board.win?
  # end
end
