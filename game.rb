require "pry"
require "./board"
require "./human"
require "./computer"


class Game(Board.new, player1, player2)
def initialize
  @board = Board.new
  @player1 = player1
  @player2 = player2
  @current_player = @player1
end

def switch_player
    @current_player == "X" ? "O" : "X" #Does this do what I think?
end

def take_turn
  @board.show_board
  puts "Player #{@current_player}, please choose a space to move to. (1-9)"
  @current_player.move
  until @board.available_moves.include?(move)
    puts "You have to choose an available board position. Please pick again."
    @current_player.move
  end
  @board.place_peice(move, @current_player)
end

def tic_tac_toe
    until game_over?
       take_turn
       switch_player unless game_over?
    end
  ending_script
end

def game_over?
    @board.win? || @board.draw?
end
def ending_script
    if @board.win?
      puts "You're awesome #{@current_player}."
    else
      puts "At least you didn't lose."
    end
    play_again?
end
def play_again?
    puts "Want to play agian? (y/n)"
    choice = gets.chomp.downcase.to_s
     until ["y", "n"].include?(choice)
       puts "Please choose 'Y' or 'N'."
       choice = gets.chomp.downcase.to_s
     end
    if choice == "y"
    tictactoe
    else
      puts "Thats ok Bye!"
    end
end
tic_tac_toe
end
