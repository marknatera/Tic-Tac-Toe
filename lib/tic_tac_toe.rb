module TicTacToe

  def clear_terminal
    Gem.win_platform? ? (system "cls") : (system "clear")
  end
  
end