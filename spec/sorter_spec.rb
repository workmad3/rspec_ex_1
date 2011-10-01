require "rspec"
require '../lib/sorter.rb'


describe "Sorter" do

  it "should create a new Sorter node with the correct value" do
    sorter=Sorter.new(3)
    sorter.value.should == 3
  end

end