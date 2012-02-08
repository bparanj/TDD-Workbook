# Version 1
class Gear
  attr_reader :chainring, :cog, :rim, :tire
  
  def initialize(chainring, cog, rim, tire)
    @chainring = chainring
    @cog = cog
    @rim = rim
    @tire = tire
  end
  
  def gear_inches
    ratio * wheel.diameter
  end
  
  def wheel
    @wheel ||= Wheel.new(rim, tire)
  end
end

# Version 2
class Gear
  attr_reader :chainring, :cog, :rim, :tire
  
  def initialize(chainring, cog, rim, tire)
    @chainring = chainring
    @cog = cog
    @rim = rim
    @tire = tire
  end
  
  def gear_inches
    ratio * diameter
  end
  
  def wheel
    @wheel ||= Wheel.new(rim, tire)
  end
  
  def diameter
    wheel.diameter
  end
end

# Version 3

class Gear
  attr_reader :chainring, :cog, :wheel
  
  def initialize(args)
    @chainring = args[:chainring]
    @cog = args[:cog]
    @wheel = args[:wheel]
  end
  
end

Gear.new(:chainring => 52, :cog => 11, :wheel => Wheel.new(26, 1.5)).gear_inches

