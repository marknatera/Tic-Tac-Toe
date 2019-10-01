
class Board

  attr_accessor :spaces

  def initialize
    @spaces = Array.new(3) { Array.new(3, ' ') }
    generate_board
  end

  def generate_board
    @spaces.map.with_index { |row, index| board_row(row, index) }
  end

  def board_row(row,index)
    "#{index + 1} ║  #{row[0]}  ║  #{row[1]}  ║  #{row[2]}  ║"
  end

  # Board Elements
  def board_column;    '  A     B     C';        end
  def board_header;    '  ╔═════╦═════╦═════╗';  end
  def board_separator; '  ║═════╬═════╬═════╣';  end
  def board_footer;    '  ╚═════╩═════╩═════╝';  end


  def current_board_state
    spaces.map.with_index do |row, index|
      if index == 0
        "#{index + 1} ║  #{row[0]}  ║  #{row[1]}  ║  #{row[2]}  ║"
      elsif index == 1
        "#{index + 1} ║  #{row[0]}  ║  #{row[1]}  ║  #{row[2]}  ║"
      else
        "#{index + 1} ║  #{row[0]}  ║  #{row[1]}  ║  #{row[2]}  ║"
      end
    end
  end

end