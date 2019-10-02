module Frame
  def users_screen
    users_screen = TTY::Screen.size
  end

  def welcome_frame
    welcome_box = TTY::Box.frame(width: users_screen[1]/2, height: users_screen[0]/2, padding: 3, align: :center, top: users_screen[0]/2/2, left: users_screen[1]/2/2, border: :thick, style: {border: {fg: :yellow}}, title: {top_center: '  POLITECH  ', bottom_right: '  v1.0  '}) do
      "#{game_start_banner.light_green}\nPress any key to play!"
    end
  end

  def winners_frame
    winners_box = TTY::Box.frame(width: users_screen[1]/2, height: users_screen[0]/2, padding: 3, align: :center, top: users_screen[0]/2/2, left: users_screen[1]/2/2, border: :thick, style: {border: {fg: :yellow}}, title: {top_center: '  POLITECH  ', bottom_right: '  v1.0  '}) do
      "#{winner_banner.light_blue}\n#{winner.name.bold.red} WINS!!!!!\n
      #{winner.stats}
      "

    end
  end

  def cats_frame
    cats_box = TTY::Box.frame(width: users_screen[1]/2, height: users_screen[0]/2, padding: 3, align: :center, top: users_screen[0]/2/2, left: users_screen[1]/2/2, border: :thick, style: {border: {fg: :yellow}}, title: {top_center: '  POLITECH  ', bottom_right: '  v1.0  '}) do
      "#{cats_banner}\nLooks like we found us a cat\n
      \n#{@player1.stats.bold.light_green}\n
      \n#{@player2.stats.bold.light_blue}\n
      "
    end
  end

  def current_game_frame
    current_game_box = TTY::Box.frame(width: users_screen[1]/2, height: users_screen[0]/2, top: users_screen[0]/2/2, left: users_screen[1]/2/2, align: :center, padding: 1, border: :thick, style: {border: {fg: :yellow}}, title: {top_left: '  POLITECH // TIC-TAC-TOE  ', bottom_right: '  v1.0  '}) do
      "\n#{game_start_banner}\n
       \n#{@player1.stats}\n
       \n#{@player2.stats}\n
       \n
      #{board_column}\n
       \n
      #{board_header}\n
      #{board.display[0]}
      #{board_separator}\n
      #{board.display[1]}
      #{board_separator}\n
      #{board.display[2]}
      #{board_footer}\n
       \n
      #{current_player.name.bold.red}, make your move"
    end
  end

  def current_cc_game_frame
    current_game_box = TTY::Box.frame(width: users_screen[1]/2, height: users_screen[0]/2, top: users_screen[0]/2/2, left: users_screen[1]/2/2, align: :center, padding: 1, border: :thick, style: {border: {fg: :yellow}}, title: {top_left: '  POLITECH // TIC-TAC-TOE  ', bottom_right: '  v1.0  '}) do
      "\n#{game_start_banner}\n
       \n#{@player1.stats}\n
       \n#{@player2.stats}\n
       \n
      #{board_column}\n
       \n
      #{board_header}\n
      #{board.display[0]}
      #{board_separator}\n
      #{board.display[1]}
      #{board_separator}\n
      #{board.display[2]}
      #{board_footer}\n
       \n
      #{current_player.name.bold.green}, Bot Move!"
    end
  end

  # Board Elements
  def board_column;    '  A     B     C';        end
  def board_header;    '  ╔═════╦═════╦═════╗';  end
  def board_separator; '  ║═════╬═════╬═════╣';  end
  def board_footer;    '  ╚═════╩═════╩═════╝';  end

end