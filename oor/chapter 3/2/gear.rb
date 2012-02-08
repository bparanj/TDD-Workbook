load 'wheel.rb'

class Gear
  attr_reader :chainring, :cog, :wheel
  
  def initialize(chainring, cog, wheel)
    @chainring = chainring
    @cog = cog
    @wheel = wheel
  end
  
  def gear_inches
    ratio * wheel.diameter
  end
  
  def ratio
    chainring / cog.to_f
  end
  
end

p "Gear expects a polymorphic type that knows 'diameter'"
p Gear.new(52, 11, Wheel.new(26, 1.5)).gear_inches