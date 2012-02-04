describe Contract do
  
  context "Contracts are at the same level as the instructions and expressions" do
    # Precondition Principle : A client calling a feature must make sure that the 
    # precondition holds before the call.
    let(:subject) { Contract.new(200) }
    it "should have a precondition property that a feature imposes on all its clients" do
      subject.should_not be_too_small
      subject.should_not be_too_big 
    end
    # Post condition property will always hold as a result of the execution of the command
    it "should have a postcondition to precisely express the intent of the method" do
      expect do
        subject.invoke
      end.ensure post_condition
    end
    
    it "should hold class invariant as soon as the object is created, then before and after the execution of any of the class fetures available to its clients" do
      
    end
  end
end

class Contract
  
  def initialize(i)
    @i = i
  end
  
  def too_small?
    @i <= 1
  end
  
  def too_big?
    @i >= count
  end
  
  def count
    500
  end
end

class Client
  it_should_behave_like ClientContract
  # Is this run inside every test?
end