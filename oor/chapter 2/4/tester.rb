load 'wheel.rb'
load 'gear.rb'

wheel = Wheel.new(26, 1.5)
p wheel.circumference

p Gear.new(52,11,wheel).gear_inches

p Gear.new(52, 11).ratio
