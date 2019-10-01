class Game

  attr_accessor :winner, :winning_letter, :player1, :player2, :board

  def initialize(player1, player2, board)
    @player1  = player1
    @player2  = player2
    @board    = board
    @game     = self
  end

  def current_player
    board.turn_count.odd? ? @player2 : @player1
  end

  def check_winner_draw
    winning_letter = @board.find_winner? ? @board.find_winner? : false
    cat = @board.full? ? @board.full? : false

    if winning_letter
      @player1.letter == "X" ? @winner = @player1 : @winner = @player2
      @winner.win_count += 1
      winner_prompt
      game_loop
    end

    if cat
      cat_prompt
    end


  end

  def play
    cc_play if current_player.class == Players::Computer
    current_game_prompt
  end

  def current_turn(move)
    move = move.split(//)
    letters = ['A','B','C']
    y = letters.index(move[0])
    x = move[1].to_i-1
    @board.insert_token(current_player, x, y)
    check_winner_draw
    play
  end

  def cc_play
    play if current_player.class == Players::Human
    current_cc_game_prompt
  end

  def cc_turn(move)
    move = move.split(//)
    letters = ['A','B','C']
    y = letters.index(move[0])
    x = move[1].to_i-1
    @board.insert_token(current_player, x, y)
    check_winner_draw
    cc_play
  end
end
