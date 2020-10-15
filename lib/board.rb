class Board
  attr_accessor :boardcase, :A1, :A2, :A3, :B1, :B2, :B3, :C1, :C2, :C3, :turn_count
  
  def initialize
    @turn_count = 0
    @a1 = BoardCase.new("A1", " ")
    @a2 = BoardCase.new("A2", " ")
    @a3 = BoardCase.new("A3", " ")
    @b1 = BoardCase.new("B1", " ")
    @b2 = BoardCase.new("B2", " ")
    @b3 = BoardCase.new("B3", " ")
    @c1 = BoardCase.new("C1", " ")
    @c2 = BoardCase.new("C2", " ")
    @c3 = BoardCase.new("C3", " ")
    @boardcase = [@a1, @a2, @a3, @b1, @b2, @b3, @c1, @c2, @c3]
  end

  def show
    puts "-" * 7
    puts "|" + @boardcase[0].content + "|" + @boardcase[1].content + "|" + @boardcase[2].content + "|"
    puts "-" * 7
    puts "|" + @boardcase[3].content + "|" + @boardcase[4].content + "|" + @boardcase[5].content + "|"
    puts "-" * 7
    puts "|" + @boardcase[6].content + "|" + @boardcase[7].content + "|" + @boardcase[8].content + "|"
    puts "-" * 7
  end
  
  def play_turn(player, choice)   
      case choice
      when "A1"  
        @a1.content = player.symbol if @a1.content == " "
      when "A2" 
        @a2.content = player.symbol if @a2.content == " "
      when "A3" 
        @a3.content = player.symbol if @a3.content == " "
      when "B1" 
        @b1.content = player.symbol if @b1.content == " "
      when "B2" 
        @b2.content = player.symbol if @b2.content == " "
      when "B3" 
        @b3.content = player.symbol if @b3.content == " "
      when "C1" 
        @c1.content = player.symbol if @c1.content == " "
      when "C2" 
        @c2.content = player.symbol if @c2.content == " "
      when "C3" 
        @c3.content = player.symbol if @c3.content == " " 
      else
        puts "Avec une majuscule!"
      end
      @turn_count +=1
  end

  def victory?
    if @boardcase[0].content == "X" && @boardcase[1].content == "X" && @boardcase[2].content == "X"
      return true
    elsif @boardcase[3].content == "X" && @boardcase[4].content == "X" && @boardcase[5].content == "X"
      return true
    elsif @boardcase[6].content == "X" && @boardcase[7].content == "X" && @boardcase[8].content == "X"
      return true
    elsif @boardcase[0].content == "X" && @boardcase[3].content == "X" && @boardcase[6].content == "X"
      return true
    elsif @boardcase[1].content == "X" && @boardcase[4].content == "X" && @boardcase[7].content == "X"
      return true
    elsif @boardcase[2].content == "X" && @boardcase[5].content == "X" && @boardcase[8].content == "X"
      return true
    elsif @boardcase[0].content == "X" && @boardcase[4].content == "X" && @boardcase[8].content == "X"
      return true
    elsif @boardcase[2].content == "X" && @boardcase[4].content == "X" && @boardcase[6].content == "X"
      return true
    elsif @boardcase[0].content == "O" && @boardcase[1].content == "O" && @boardcase[2].content == "O"
      return true
    elsif @boardcase[3].content == "O" && @boardcase[4].content == "O" && @boardcase[5].content == "O"
      return true
    elsif @boardcase[6].content == "O" && @boardcase[7].content == "O" && @boardcase[8].content == "O"
      return true
    elsif @boardcase[0].content == "O" && @boardcase[3].content == "O" && @boardcase[6].content == "O"
      return true
    elsif @boardcase[1].content == "O" && @boardcase[4].content == "O" && @boardcase[7].content == "O"
      return true
    elsif @boardcase[2].content == "O" && @boardcase[5].content == "O" && @boardcase[8].content == "O"
      return true
    elsif @boardcase[0].content == "O" && @boardcase[4].content == "O" && @boardcase[8].content == "O"
      return true
    elsif @boardcase[2].content == "O" && @boardcase[4].content == "O" && @boardcase[6].content == "O"
      return true

    else
      return false
    end
  end

  def is_full?
    if @turn_count == 9
      return true
    else
      false
    end
  end

end
