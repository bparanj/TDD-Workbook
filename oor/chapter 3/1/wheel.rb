load 'gear.rb'

class Wheel
  attr_reader :rim, :tire
  
  def initialize(rim, tire)
    @rim = rim
    @tire = tire
  end
  
  def diameter
    rim + (tire * 2)
  end
  
end


p Gear.new(52, 11, 26, 1.5).gear_inches