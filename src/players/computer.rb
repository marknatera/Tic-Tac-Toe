module Players
  class Computer < Player

    attr_accessor :name, :letter, :wins_count

    def initialize
      self.wins_count = 0
      # Need FFaker
      self.name = "Alexander S. Douglas"
    end

    def stats
      "#{self.name} as #{self.letter} // Wins: #{self.wins_count}"
    end


    def move(board)
      if board.cells[4] == " "
        "5"
      elsif board.cells[0] == " "
        "1"
      elsif board.cells[2] == " "
        "3"
      elsif board.cells[6] == " "
        "7"
      elsif board.cells[8] == " "
        "9"
      elsif board.cells[1] == " "
        "2"
      elsif board.cells[3] == " "
        "4"
      elsif board.cells[5] == " "
        "6"
      elsif board.cells[7] == " "
        "8"
      end

    end

  end
end
