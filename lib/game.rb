class Game
  #TO DO : la classe a plusieurs attr_accessor: le current_player (égal à un objet Player), le status (en cours, nul ou un objet Player s'il gagne), le Board et un array contenant les 2 joueurs.
  attr_accessor :board, :player1, :player2

  def initialize
    answer = "Yes"
    while answer == "Yes"
      @board = Board.new
      @board.show
      greeting
      @board.show
      
      while is_still_ongoing? 
        if new_round == false
          break
        end
      end
      puts "Play again ? (Yes/No)"
      answer = gets.chomp
    end
  end

  def new_round
    turn_player1
    @board.show
    if @board.is_full?
      puts "Match nul les champion(nes)!"
      return false
    end
    if @board.victory?
      puts "Bravo tu es CHAMPION"
      return false
    end
    turn_player2
    @board.show
    if @board.is_full?
      puts "Match nul les champion(nes)!"
      return false
    end
    if @board.victory?
      puts "Bravo tu es CHAMPION"
      return false
    end
  end

  def greeting
    puts "What's your name ?"
      player1_name = gets.chomp
    @player1 = Player.new(player1_name, "X")
      player2_name = gets.chomp
    @player2 = Player.new(player2_name, "O")
    puts "Hello #{@player1.name} & #{@player2.name}"
  end

  def turn_player1
    puts "What do you want to do player 1? "
    choice(@player1)
  end

  def turn_player2
    puts "What do you want to do player 2 ?"
    choice(@player2)
  end

  def choice(player)
    choice = gets.chomp
    @board.play_turn(player, choice)
  end

  def is_still_ongoing?
    if @board.is_full? == false || @board.victory? == false
      return true
    else 
      return false
    end
  end    

end
