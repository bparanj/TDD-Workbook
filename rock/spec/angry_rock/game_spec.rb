require 'spec_helper'

module AngryRock
  describe Game do
    it "picks paper as the winner over rock" do
      player_one = stub(:player, :name => "Green_Day", :choose => "paper")
      player_two = stub(:player, :name => "minder", :choose => "rock")
      
      game = Game.new(player_one, player_two)
      game.winner.should == "Green_Day"
      
    end
    
    it "picks scissors as the winner over paper"
    it "picks rock as the winner over scissors "
    
  end
end

# Possible combinations = 9
# Rock  Rock
# Rock  Paper
# Rock  Scissor

# Paper Rock
# Paper Paper
# Paper Scissor

# Scissor Rock
# Scissor Paper
# Scissor Scissor

# Number of items
# Rock 
# Paper
# Scissor