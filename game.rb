require "pry"
require "./board"
require "./human"
require "./computer"


class Game

  def initialize(player1,player2,board)
    @board = board
    @player1 = player1
    @player2 = player2
    @current_player = @player1
  end

  def switch_player
      # @current_player == "X" ? "O" : "X" #Does this do what I think?
      if @current_player == @player1
        @current_player = @player2
      else
        @current_player = @player1
      end
  end

  def take_turn
    @board.show_board
    puts "Player #{@current_player.piece}, please choose a space to move to. (1-9)"
    move = @current_player.move
    until @board.available_moves.include?(move)
      puts "You have to choose an available board position. Please pick again."
      move = @current_player.move

      # binding.pry
    end
    piece = @current_player.piece
    @board.place_peice(move, piece)
  end

  def tic_tac_toe
      until game_over?
         take_turn
         switch_player unless game_over?
      end
      @board.show_board
    ending_script
  end

  def game_over?
      @board.win? || @board.draw?
  end
  def ending_script
      if @board.win?
        puts "You're awesome Player #{@current_player.piece}."
        switch_player
        puts "Sorry Player #{@current_player.piece} you lose."
      else
        puts "At least you didn't lose."
      end
    end
end
