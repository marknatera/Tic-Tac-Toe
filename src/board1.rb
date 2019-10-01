class Board1
  attr_accessor :cells

  @spaces = []

  def reset!
    self.spaces = Array.new(3) { Array.new(3, ' ') }
  end

  def initialize
    self.spaces = Array.new(3) { Array.new(3, ' ') }
  end

  def display
    board_column
    board_header
    self.spaces.map.with_index do |row, index|
      if index < 2
        "#{index + 1} ║  #{row[0]}  ║  #{row[1]}  ║  #{row[2]}  ║"
        board_separator
      else
        "#{index + 1} ║  #{row[0]}  ║  #{row[1]}  ║  #{row[2]}  ║"
      end
      board_footer
    end
  end

  def board_column;    '  A     B     C';        end
  def board_header;    '  ╔═════╦═════╦═════╗';  end
  def board_separator; '  ║═════╬═════╬═════╣';  end
  def board_footer;    '  ╚═════╩═════╩═════╝';  end

  def position(user_input)
    self.cells[user_input.to_i-1]
  end

  def full?
    self.cells.all? {|cell| cell == "X" || cell == "O"}
  end

  def turn_count
    self.cells.count("X") + self.cells.count("O")
  end

  def taken?(position) #check board position
    self.cells[position.to_i-1] == "X" || #board position -1 because of test using range 1-9 (user input numbers)
    self.cells[position.to_i-1] == "O"
  end

  def valid_move?(position)
    !taken?(position) && position.to_i >0 && position.to_i <=9
  end

  def update(position, player)
      self.cells[position.to_i-1] = player.token
  end


end
