require 'spec_helper'

module AngryRock
  describe Game do
    before(:each) do
      @player_one = stub(:player, :name => "Green_Day")
      @player_two = stub(:player, :name => "minder")       
    end
    
    it "picks paper as the winner over rock" do
      @player_one.stub(:choose => Game::PAPER)
      @player_two.stub(:choose => Game::ROCK)
      
      game = Game.new(@player_one, @player_two)
      game.winner.should == @player_one.name      
    end
    
    it "picks scissors as the winner over paper" do
      @player_one.stub(:choose => Game::PAPER)
      @player_two.stub(:choose => Game::SCISSORS)
      
      game = Game.new(@player_one, @player_two)
      game.winner.should == @player_two.name
    end
    
    it "picks rock as the winner over scissors " do
      @player_one.stub(:choose => Game::ROCK)
      @player_two.stub(:choose => Game::SCISSORS)
      
      game = Game.new(@player_one, @player_two)
      game.winner.should == @player_one.name
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