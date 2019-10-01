module Players
  class Human < Player

    attr_accessor :name, :letter, :win_count

    def initialize
      self.win_count = 0
      player_config_prompt(@@players)
      @@players += 1
    end

    def set_player(player)
      self.name    = player[:name]
      self.letter  = player[:letter] unless player[:letter].nil?
      @@player1_letter.empty? ? @@player1_letter = player[:letter] : check_letter
    end

    def check_letter
      @@player1_letter == 'X' ? self.letter = 'O' : self.letter = 'X'
      @@players        = 0
      @@player1_letter = ''
    end

  end
end
