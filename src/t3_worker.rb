  class T3Worker

    attr_accessor :player, :board, :game
    attr_writer :game_type

    def initialize
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
      Game.new(Players::Human.new, Players::Computer.new, Board.new).play
    end

    def two_players
      Game.new(Players::Human.new, Players::Human.new, Board.new).play
    end

    def bot_vs_bot
      Game.new(Players::Computer.new, Players::Computer.new, Board.new).play
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
