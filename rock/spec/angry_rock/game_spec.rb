require 'spec_helper'

module AngryRock
  describe Game do
    before(:each) do
      @player_one = stub(:player, :name => "Green_Day")
      @player_two = stub(:player, :name => "minder")       
    end
    
    it "picks paper as the winner over rock" do
      @player_one.stub(:choose => 'paper')
      @player_two.stub(:choose => 'rock')
      
      game = Game.new(@player_one.choose, @player_two.choose)
      game.winner.should be_true      
    end
    
    it "picks scissors as the winner over paper" do
      @player_one.stub(:choose => 'scissor')
      @player_two.stub(:choose => 'paper')
      
      game = Game.new(@player_one.choose, @player_two.choose)
      game.winner.should be_true
    end
    
    it "picks rock as the winner over scissors " do
      @player_one.stub(:choose => 'rock')
      @player_two.stub(:choose => 'scissor')
      
      game = Game.new(@player_one.choose, @player_two.choose)
      game.winner.should be_true
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