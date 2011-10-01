require "rspec"
require '../lib/sorter.rb'

describe "Sorter" do

  it "should create a new Sorter node with the correct value" do
    sorter=Sorter.new
    sorter.add(3)
    sorter.value.should == 3
    sorter.add(4)
    sorter.value.should == 4
  end

end