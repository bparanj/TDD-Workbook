describe "Don't mock yourself out" do
  it "should illustrate tautology" do
    paul = stub(:paul, :current_weight => 585)
    
    paul.current_weight.should == 585
  end
end