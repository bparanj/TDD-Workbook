require_relative 'paper'
require_relative 'rock'
require_relative 'scissor'

module AngryRock
  
  class GameCoordinator
    
    def initialize(player_one, player_two)
      @player_one = player_one
      @player_two = player_two
      @choice_one = player_one.choose
      @choice_two = player_two.choose
    end

    def winner
      result = false
      
      if @choice_one == 'paper'
        result = select_winner(Paper.new, classify(@choice_two).new)
      elsif @choice_one == 'rock'
        result = select_winner(Rock.new, classify(@choice_two).new)
      elsif @choice_one == 'scissor'
        result = select_winner(Scissor.new, classify(@choice_two).new)
      end
      
      if result
        @player_one.name
      else
        @player_two.name
      end
    end
    
    private 
    
    def select_winner(receiver, target)
      receiver.beats(target)
    end
    
    def classify(string)
      Object.const_get(@choice_two.capitalize)
    end
  end
  
end