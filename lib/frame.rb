module Frame
  def users_screen
    users_screen = TTY::Screen.size
  end

  def welcome_frame
    welcome_box = TTY::Box.frame(width: users_screen[1]/2, height: users_screen[0]/2, padding: 3, align: :center, top: users_screen[0]/2/2, left: users_screen[1]/2/2, border: :thick, style: {border: {fg: :yellow}}, title: {top_center: '  POLITECH  ', bottom_right: '  v1.0  '}) do
      "#{game_start_banner.light_green}\nPress any key to play!"
    end
  end

  def current_game_frame
    current_game_box = TTY::Box.frame(width: users_screen[1]/2, height: users_screen[0]/2, top: users_screen[0]/2/2, left: users_screen[1]/2/2, align: :center, padding: 1, border: :thick, style: {border: {fg: :yellow}}, title: {top_left: '  POLITECH // TIC-TAC-TOE  ', bottom_right: '  v1.0  '}) do
      "#{player_move_banner}\n
       \n
       #{@player1.stats}\n
       #{@player2.stats}\n
       \n
      #{board_column}\n
       \n
      #{board_header}\n
      #{board.current_board_state[0]}\n
      #{board_separator}\n
      #{@board.current_board_state[1]}\n
      #{board_separator}\n
      #{@board.current_board_state[2]}\n
      #{board_footer}\n
       \n
      #{@player1.name}, Enter column first, then row || ex: A2"
    end
  end

  # Board Elements
  def board_column;    '  A     B     C';        end
  def board_header;    '  ╔═════╦═════╦═════╗';  end
  def board_separator; '  ║═════╬═════╬═════╣';  end
  def board_footer;    '  ╚═════╩═════╩═════╝';  end

end