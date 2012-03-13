require_relative 'paper'
require_relative 'rock'
require_relative 'scissor'

module AngryRock
  
  class GameCoordinator
    
    def initialize(choice_one, choice_two)
      @choice_one = choice_one
      @choice_two = choice_two
    end

    def winner
      if @choice_one == 'paper'
        select_winner(Paper.new, Object.const_get(@choice_two.capitalize).new)
      elsif @choice_one == 'rock'
        rock = Rock.new
        rock.beats(Object.const_get(@choice_two.capitalize).new)
      elsif @choice_one == 'scissor'
        scissor = Scissor.new
        scissor.beats(Object.const_get(@choice_two.capitalize).new)
      end
    end
    
    private 
    
    def select_winner(receiver, target)
      receiver.beats(target)
    end
  end
  
end

      # if @player_one.choose == PAPER && @player_two.choose == ROCK
      #   @player_one.name
      # elsif @player_one.choose == ROCK && @player_two.choose == SCISSORS
      #   @player_one.name
      # else
      #   @player_two.name
      # end
