module TicTacToe
  class Game

    include TicTacToe
    include Frame
    include Prompt
    include Banner

    attr_accessor :player, :board, :spot

    def initialize(players, board)
      @player1  = players[0]
      @player2  = players[1]
      @board    = board

      @current_turn_player = [@player1, @player2].sample

      play
    end

    def play
      current_game_prompt

    end


    def current_turn(move)
      move = move.split(//)
      letters = ['A','B','C']
      x = letters.index(move[0])
      y = move[1].to_i-1
      puts @board.spaces[x][y].space
      binding.pry

    end




# @board.current_board[column][row] = @player1.letter
# change_turn

  end
end