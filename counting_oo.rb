class CountingGame
  DIRECTION_ASCENDING  = 0
  DIRECTION_DESCENDING = 1
  attr_accessor :current_direction

  # Init current_direction instance variable
  def initialize
    @current_direction = DIRECTION_ASCENDING
  end

  def play(num_players = 10, max_count = 100)

    # Player's index starts at 0
    player_index = 0
    (1..max_count).each do |running_count|
      puts "> Player #{player_index} says #{running_count}"
      if (running_count%7 == 0)
        puts "> *** Direction change at #{running_count} ***"
        switch_direction
      elsif (running_count%11 == 0)
        puts "> *** Skipping next player at #{running_count} ***"
        player_index = next_player_index(player_index)
      elsif (running_count == 100)
        puts "> *** Player #{player_index} says #{running_count} ***"
      end
      player_index = next_player_index(player_index)
      player_index = player_index%num_players
    end
  end

  private
  def next_player_index(current_player_index)
    if(self.current_direction == DIRECTION_ASCENDING)
      return current_player_index+1
    else
      return current_player_index-1
    end
  end

  def switch_direction
    if(self.current_direction == DIRECTION_ASCENDING)
      self.current_direction = DIRECTION_DESCENDING
    else
      self.current_direction = DIRECTION_ASCENDING
    end
  end
end

# Running the Game
CountingGame.new.play(10,100)