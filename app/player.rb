class Player
  include Frame
  attr_accessor :game
  attr_reader :token

  @@players = 0
  @@player1_letter = ''

  def stats
    "#{self.name} as #{self.letter} // Wins: #{self.win_count}"
  end

end
