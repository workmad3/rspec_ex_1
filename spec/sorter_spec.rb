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

  it "should start with a nil value"  do
    sorter=Sorter.new
    sorter.value.should == nil
  end

  it "should create a new sorter node with nil less_than and greater_or_equal references"   do
    sorter=Sorter.new
    sorter.less_than.should == nil
    sorter.greater_or_equal.should == nil
  end

  it "should add a number less than what is in the node" do
    sorter = Sorter.new
    sorter.add(33)
    sorter.add(22)
    sorter.less_than.value.should == 22
  end



  it "should be able to sort two numbers" do
    pending('need to be able to store numbers in a sorted fashion first')
    sorter = Sorter.new
    sorter.add(33)
    sorter.add(22)
    sorter.sort.should == [ 22, 33 ]
  end

end