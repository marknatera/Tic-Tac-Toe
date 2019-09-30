module TicTacToe
  class Player

    attr_accessor :name, :letter, :player_type, :wins_count

    def initialize(player_type)
      self.player_type = player_type
      self.wins_count = 0
      create_cpu unless player_type == 'Human'
    end

    def create_cpu
      # Need FFaker
      self.name = "Alexander S. Douglas"
    end

    def stats
      "#{self.name} as #{self.letter} // Wins: #{self.wins_count}"
    end

  end
end