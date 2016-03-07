
class Game
  def greeting
  puts "Welcome to Tic Tac Toe"
  puts "Lets Play"
  puts "Single player Game or Two? Or Watch no players and watch the computer? (0/1/2)"
  choice = gets.chomp.to_i
  until ["0","1","2"].include?(choice)
   puts "Please choose '0','1'or '2'."
    choice = gets.chomp.to_i
  end
  choice
end
def game_type
  if choice == 0
    @player1 = Computer.new
    @player2 = Computer.new
  elsif choice == 1
    @player1 = Human.new
    @player2 = Computer.new
  else
    @player1 = Human.new
    @player2 = Human.new
  end
end
  def switch_player(@current_player)
    @current_player == "X" ? "O" : "X" #Does this do what I think?
  end
  def take_turn(@board, @current_player)
  @board.show_board
  puts "Player #{player}, please choose a space to move to. (1-9)"
  choice = gets.chomp.to_i
  until @board.available_moves.include?(choice)
    puts "You have to choose an available board position. Please pick again."
    choice = gets.chomp.to_i
  end
  choice
end

  def tic_tac_toe
    greeting
    game_type
    @board = Board.new
    current_player = @player1
    until game_over?(@board)
      move = take_turn(@board, @current_player)
      @board[move-1] = @current_player
      switch_player(@current_player) unless game_over?(@board)
    end
  ending_script(@current_player,@board)
  end

  def ending_script(@current_player,@board)
    if win?(@board)
      puts "You're awesome #{@current_player}."
    elsif draw?(@board)
      puts "At least you didn't lose."
    else
      puts "You really need to work on that."
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
tictactoe
