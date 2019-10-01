module Players
  class Human < Player

    attr_accessor :name, :letter, :wins_count
    
    def initialize
      self.wins_count = 0
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



    def move(board)
      input = gets.strip
    end

  end
end
