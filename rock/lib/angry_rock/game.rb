module AngryRock
  class Game
    PAPER = 0
    ROCK = 1
    SCISSORS = 2

    def initialize(player_one, player_two)
      @player_one = player_one
      @player_two = player_two
    end
    
    def winner
      if @player_one.choose == PAPER && @player_two.choose == ROCK
        @player_one.name
      else
        @player_two.name
      end
    end
    
  end
end