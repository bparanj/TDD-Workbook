require 'spec_helper'

module AngryRock
  describe Game do
    it "picks paper as the winner over rock" do
      player_one = stub(:player, :name => "Green_Day", :choose => Game::PAPER)
      player_two = stub(:player, :name => "minder", :choose => Game::ROCK)
      
      game = Game.new(player_one, player_two)
      game.winner.should == "Green_Day"      
    end
    
    it "picks scissors as the winner over paper" do
      player_one = stub(:player, :name => "Green_Day", :choose => Game::PAPER)
      player_two = stub(:player, :name => "minder", :choose => Game::SCISSORS)
      
      game = Game.new(player_one, player_two)
      game.winner.should == "minder"
    end
    
    it "picks rock as the winner over scissors " do
      player_one = stub(:player, :name => "Green_Day", :choose => Game::ROCK)
      player_two = stub(:player, :name => "minder", :choose => Game::SCISSORS)
      
      game = Game.new(player_one, player_two)
      game.winner.should == "Green_Day"
    end
    
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