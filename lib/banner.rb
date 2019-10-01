module Banner

  def ascii_img file_name
    ascii_path = File.join(File.dirname(__FILE__), '..' , 'ascii' ,file_name)
    img = File.read(ascii_path)
  end

  def game_start_banner
    ascii_img 'title.txt'
  end

  def invasion_banner
    ascii_img 'invasion.txt'
  end

  def player_config_banner
    ascii_img 'player.txt'
  end

  def player_move_banner
    ascii_img 'your_move.txt'
  end

  def winner_banner
    ascii_img 'winner.txt'
  end

end