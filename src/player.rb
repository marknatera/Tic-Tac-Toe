class Player

  attr_reader :token

  def initialize(token)
    @token = token
  end

  def stats
    "#{self.name} as #{self.letter} // Wins: #{self.wins_count}"
  end




end
