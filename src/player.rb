class Player

  attr_reader :token
  @@players = 0
  @@player1_letter = ''

  def stats
    "#{self.name} as #{self.letter} // Wins: #{self.wins_count}"
  end

end
