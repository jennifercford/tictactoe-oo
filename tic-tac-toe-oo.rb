require 'pry'

require "./game"
require "./human"
require "./computer"
require "./board"


def choose_piece(options)
    puts "Would you like to be 'X' or 'O'?"
    choice = gets.chomp.upcase
    until options.include?(choice)
      puts "Please only choose X or O."
      choice = gets.chomp.upcase
    end
    # @peices.pop(choice)
    choice
  end

def play
  puts "Welcome to Tic Tac Toe"
  puts "Lets Play"
  puts "Single player Game or Two? Or Watch no players and watch the computer? (0/1/2)"
  choice = gets.chomp.to_i
  until [0,1,2].include?(choice)
   puts "Please choose '0','1'or '2'."
    choice = gets.chomp.to_i
  end

  puts "Player 1, which piece would you like?"
  options = ["X", "O"]
  p1_piece = choose_piece(options)
  options.delete(p1_piece)
  puts "Player 2, you will be playing #{options.first}."
  p2_piece = options.first

  if choice == 0
    player1 = Computer.new(p1_piece)
    player2 = Computer.new(p2_piece)
  elsif choice == 1
    player1 = Human.new(p1_piece)
    player2 = Computer.new(p2_piece)
  else
    player1 = Human.new(p1_piece)
    player2 = Human.new(p2_piece)
  end

  tic_tac_toe= Game.new(player1,player2,Board.new)
  tic_tac_toe.tic_tac_toe
  play_again?
end

#Tests if this works 1 chooses human and computer and vice versa!
def play_again?
    puts "Want to play agian? (y/n)"
    choice = gets.chomp.downcase.to_s
     until ["y", "n"].include?(choice)
       puts "Please choose 'Y' or 'N'."
       choice = gets.chomp.downcase.to_s
     end
    if choice == "y"
      play
    else
      puts "Thats ok Bye!"
    end
end
play
