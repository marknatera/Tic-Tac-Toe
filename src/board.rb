class Board
  attr_accessor :spaces

  @spaces = []

  def initialize
    self.spaces = Array.new(3) { Array.new(3, spot) }
  end

  def spot
    @spot ||= SpotToken.new
  end

  def display
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

  def turn_count
    self.spaces.flatten.count('X') + self.spaces.flatten.count('O')
  end

  def insert_token( player, x, y )
    return unless @spaces[x][y].class == SpotToken
    @spaces[x][y] = player.letter
  end

  def find_winner
    check_rows || check_columns || check_diagonals
  end

  def all_equal?(row)
    return if row.first == spot
    row.each_cons(2).all? { |x,y| x == y }
  end

  def check_rows
    @spaces.each { |row| return row.first if all_equal?(row) }
    return false
  end

  def check_columns
    @spaces.transpose.each { |row| return row.first if all_equal?(row) }
    return false
  end

  def check_diagonals
    diagonals = [
      [@spaces[0][0], @spaces[1][1], @spaces[2][2]],
      [@spaces[0][2], @spaces[1][1], @spaces[2][0]]
    ]
    diagonals.each { |row| return row.first if all_equal?(row) }
    return false
  end

end