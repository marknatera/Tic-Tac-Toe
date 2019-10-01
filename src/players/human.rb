module Players
  class Human < Player

    attr_accessor :name, :letter, :player_type, :wins_count

    def initialize
      self.wins_count = 0
    end


    def move(board)
      input = gets.strip
    end
  end
end
