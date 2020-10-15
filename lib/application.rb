class Application
  def perform
    # TO DO : méthode qui initialise le jeu puis contient des boucles while pour faire tourner le jeu tant que la partie n'est pas terminée.
    
    turn = 0
  while turn < 10
  myboard.plays(morpion.player1) 
  system 'clear'
  myboard.show_board
  turn += 1
  break if turn == 9
  break if myboard.player_win(morpion.player1.symbol)
  myboard.plays(morpion.player2)
  system 'clear'
  myboard.show_board
  turn += 1
  break if turn == 9
  break if myboard.player_win(morpion.player2.symbol)
end
puts "match nul" if turn == 9
puts "#{morpion.player1.name} a gagné" if myboard.player_win(morpion.player1.symbol)
puts "#{morpion.player2.name} a gagné" if myboard.player_win(morpion.player2.symbol)


  end

end