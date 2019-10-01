module TicTacToe
  class T3Worker

    include TicTacToe
    include Frame
    include Prompt
    include Banner

    attr_accessor :player, :board, :game
    attr_writer :game_type

    def initialize
      clear_terminal
      welcome_prompt
      setup_game
    end

    def game_types
      game_types = [
        { name:'Human VS Computer', value: 'hvc'},
        { name: 'Human VS Human', value: 'hvh' },
        { name: 'Computer VS Computer', value: 'cvc' }
      ]
    end

    def setup_game
      main_menu_promt
      player_config_prompt # This logic will change when different game_types allowed
      start_game
    end

    def game_config(game_selection)
      # Config Logic goes here // Version 1 only Human vs Computer
      case game_selection
      when 'hvc'; return one_player;
      when 'hvh'; return two_players;
      when 'cvc'; return bot_vs_bot;
      end
    end

    def one_player
      @board   = Board.new
      @player  = Player.new('Human')
      @cpu     = Player.new('Computer')
      @players = [@player,@cpu]
    end

    def two_players
      # hvh code goes here
      puts "Not so fast"; return start_game;
    end

    def bot_vs_bot
      # cvc code goes here
      puts "Not so fast"; return start_game;
    end

    def set_player_one(player)
      @player.name    = player[:name]
      @player.letter  = player[:letter]
      player[:letter] == 'X' ? @cpu.letter = 'O' : @cpu.letter = 'X'
    end

    def set_player_two(player)
    end

    def start_game
      # @game = Game.new(@players, @board)
      # current_game(@game)

    end

    # def play_again
    #   loop do # notice much simpler loop
    #     input = gets.chomp.upcase
    #     if input == "Y"
    #       return true
    #     elsif input == "N"
    #       return false
    #     end
    #   end
    # end
    #
    # def game_loop
    #   while play_again
    #     game_start
    #   end
    # end


  end
end