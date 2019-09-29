require_relative '../lib/tic_tac_toe.rb'
require_relative '../lib/banner.rb'

require_relative "game.rb"
require_relative 'board.rb'
require_relative 'player.rb'

module TicTacToe
  class T3Worker

    include TicTacToe
    include Banner

    def initialize
      clear_terminal
      start
    end

    def start
      binding.pry
    end


  end
end