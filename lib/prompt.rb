module Prompt

  def welcome_prompt
    prompt = TTY::Prompt.new
    prompt.keypress(welcome_frame)
    clear_terminal
  end

  def main_menu_promt
    print invasion_banner.red.blink
    prompt = TTY::Prompt.new
    game_selection = prompt.select('Choose Game Type?', game_types)
    pid = Process.fork{ exec "curl http://parrot.live" }
    sleep(2)
    Process.kill("HUP", pid)
    return game_config(game_selection)
    clear_terminal
  end

  def player_config_prompt(players)
    print player_config_banner.blue
    prompt = TTY::Prompt.new
    player = prompt.collect do
      key(:name).ask("What is your name?".bold.cyan, active_color: :bold) do |q|
        q.required true; q.modify :capitalize;
      end
      key(:letter).select("Choose your destiny?".bold.cyan, %w(X O), active_color: :bold) unless players > 0
    end
    clear_terminal
    return set_player(player)
  end


  def current_game_prompt
    prompt = TTY::Prompt.new
    move = prompt.ask(current_game_frame,required: true) do |q|
      q.modify :up, :remove
      q.validate(/^(?=.{2}$)[A-Ca-c][1-3]*$/, 'Please choose a character A-C and an integer 1-3')
    end
    clear_terminal
    current_turn(move)
  end

end