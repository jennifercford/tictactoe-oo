
class Human

  def initialize
    @peices = ["X","O"]
  end

  def choose_piece
      puts "Would you like to be 'X' or 'O'?"
      choice = gets.chomp.upcase
      until ["X", "O"].include?(choice)
        puts "Please only choose X or O."
        choice = gets.chomp.upcase
      end
      # @peices.pop(choice)
      @piece = choice
    end

    def piece
      @piece
    end

    def move
      gets.chomp.to_i
    end
end
