module Players
  class Computer < Player

    attr_accessor :name, :letter, :wins_count

    def initialize
      self.wins_count = 0
      self.name = FFaker::Name.name
      @@player1_letter == 'X' ? self.letter = 'O' : self.letter = 'X'
      @@player1_letter = self.letter
      check_cc
    end

    def check_cc
      @@players == 0 ? @@players += 1 : @@players == 0
      @@player1_letter = '' unless @@players == 1
    end

    def stats
      "#{self.name} as #{self.letter} // Wins: #{self.wins_count}"
    end


    def move(game)
      if game.board.spaces[1][1].class    == SpotToken
        move = "B2"
      elsif game.board.spaces[0][0].class == SpotToken
        move = "A1"
      elsif game.board.spaces[0][2].class == SpotToken
        move = "C1"
      elsif game.board.spaces[2][0].class == SpotToken
        move = "A3"
      elsif game.board.spaces[2][2].class == SpotToken
        move = "C3"
      elsif game.board.spaces[0][1].class == SpotToken
        move = "B1"
      elsif game.board.spaces[1][0].class == SpotToken
        move = "A2"
      elsif game.board.spaces[1][2].class == SpotToken
        move = "C2"
      elsif game.board.spaces[2][1].class == SpotToken
        move = "B3"
      end

      game.cc_turn(move)
    end
  end
end
