class Game
  include Frame
  include Prompt
  include Banner

  attr_accessor :winner, :player1, :player2, :board

  def initialize(player1, player2, board)
    @player1  = player1
    @player2  = player2
    @board    = board
    binding.pry
  end

  def current_player
    board.turn_count.odd? ? @player2 : @player1
  end

  def check_winner
    winner = @board.find_winner
    if winner
      winner_prompt
    end
  end

  def play
    current_game_prompt
  end

  def current_turn(move)
    move = move.split(//)
    letters = ['A','B','C']
    y = letters.index(move[0])
    x = move[1].to_i-1
    @board.insert_token(current_player, x, y)
    check_winner
    play
  end
end
