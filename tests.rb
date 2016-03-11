require "pry"
require "minitest/autorun"

# require "./computer"
require "./human"
require "./game"
require "./board"


class GameTest < MiniTest::Test
  def test_switch_player
    player1 = Human.new
    player2 = Human.new
    game = Game.new(player1,player2,Board.new)
    assert @current_player = player1
    game.switch_player
    assert @current_player = player2
  end
  # def test_game_over?
  #   game = Game.new
  #   #extra bits get game_over to return false
  #   refute game.game_over?
  # end
  #
  # def test_playagain?
  #   game = Game.new
  #   game.stub :gets, "y" do
  #     game.play_again?
  #   end
  #   assert game.play_again?
  # end
end

class HumanTest < MiniTest::Test

  # def test_player_can_their_piece
  #   jen = Human.new "jen"
  #   jen.stub :gets, "X" do
  #     jen.choose_piece
  #   end
  #   assert jen.piece == "X"
  # end

end

class ComputerTest < MiniTest::Test

  # def test_player_knows_their_piece
  #   player1 = Computer.new
  #   player1.stub :sample, "X" do
  #     player1.choose_piece
  #   end
  #   assert player1.piece == "X"
  # end

end

class BoardTest < MiniTest::Test
  def test_can_build_a_board
    board = Board.new
    assert board
  end
  def test_for_available_moves
    board = Board.new
    assert board.available_moves == (1..9).to_a
    assert board.available_moves.include?(1)
    board.place_peice(1, "X")
    refute board.available_moves.include?(1)
  end
  def test_place_peice?
    board = Board.new
    board.place_peice(1,"X")
    # board.show_board
    refute board.available_moves.include?(1)
  end
#   def test_a_win?
#     board.Board.new
#     board.place_peice(1, "X")
#     board.place_peice(2, "X")
#     board.place_peice(3, "X")
# binding.pry
#     assert board.win?
#   end
end
