module TicTacToe
  class Board

    attr_accessor :spaces, :spot

    def initialize
      @spaces = Array.new(3) { Array.new(3, spot) }
      generate_board
    end

    def generate_board
      @spaces.map.with_index { |row, index| board_row(row, index) }
    end

    def board_row(row,index)
      "#{index + 1} ║  #{row[0]}  ║  #{row[1]}  ║  #{row[2]}  ║"
    end

    def spot
      Spot.new
    end

    # Board Elements
    def board_column;    '  A     B     C';        end
    def board_header;    '  ╔═════╦═════╦═════╗';  end
    def board_separator; '  ║═════╬═════╬═════╣';  end
    def board_footer;    '  ╚═════╩═════╩═════╝';  end


    def current_board_state
      binding.pry
      spaces.map.with_index do |row, index|
        if index == 0
          "#{index + 1} ║  #{row[0].spot}  ║  #{row[1].spot}  ║  #{row[2].spot}  ║"
        elsif index == 1
          "#{index + 1} ║  #{row[0].spot}  ║  #{row[1].spot}  ║  #{row[2].spot}  ║"
        else
          "#{index + 1} ║  #{row[0].spot}  ║  #{row[1].spot}  ║  #{row[2].spot}  ║"
        end
      end
    end

  end
end