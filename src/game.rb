class Game

  include Frame
  include Prompt
  include Banner

  attr_accessor :game, :player, :board, :spot

  def initialize(player1, player2, board)
    @player1  = player1
    @player2  = player2
    @board    = board
  end

  def current_player
    board.turn_count.odd? ? player_2 : player_1
  end

  def draw?
    @board.full? && !won? ? true : false
  end

  def over?
    (won? || draw?) ? true : false
  end

  def winner
    winner = @game.find_winner
  end


  def all_equal?(row)
    return if row.first == ' '
    row.each_cons(2).all? { |x,y| x == y }
  end

  def play
    current_game_prompt
    change_turn
  end




  def current_turn(move)
    move = move.split(//)
    letters = ['A','B','C']
    x = letters.index(move[0])
    y = move[1].to_i-1
    # board.spaces[x][y] = @current_turn_player.letter
    # find_winner
    binding.pry
    # winner = find_winner
    # if winner
    #   puts "Works"
    #   return "Mpa"
    # end
    play



  end


  private

  def find_winner
    check_rows || check_columns || check_diagonals
  end

  def check_rows
    @board.spaces.each { |row| return row.first if all_equal?(row) }
    return false
  end

  def check_columns
    @board.spaces.transpose.each { |row| return row.first if all_equal?(row) }
    return false
  end

  def check_diagonals
    diagonals = [
      [@board.spaces[0][0], @board.spaces[1][1], @board.spaces[2][2]],
      [@board.spaces[0][2], @board.spaces[1][1], @board.spaces[2][0]]
    ]

    diagonals.each { |row| return row.first if all_equal?(row) }
    return false
  end







end
