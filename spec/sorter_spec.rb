require "rspec"
require '../lib/sorter.rb'

describe "Sorter" do

  it "should create a new sorter node with all instance variables set to nil"   do
    sorter=Sorter.new
    sorter.less_than.should == nil
    sorter.value.should == nil
    sorter.greater_or_equal.should == nil
  end

  it "should add a first value to a Sorter correctly" do
    sorter=Sorter.new
    sorter.add(3)
    sorter.value.should == 3
    sorter=Sorter.new
    sorter.add(4)
    sorter.value.should == 4
  end

  it "should add a number less than what is in the node" do
    sorter = Sorter.new
    sorter.add(33)
    sorter.add(22)
    (sorter.less_than).value.should == 22
  end

    it "should add a number greater than what is in the node" do
    sorter = Sorter.new
    sorter.add(33)
    sorter.add(44)
    (sorter.greater_or_equal_than).value.should == 44
  end



  it "should be able to sort two numbers" do
    pending('need to be able to store numbers in a sorted fashion first')
    sorter = Sorter.new
    sorter.add(33)
    sorter.add(22)
    sorter.sort.should == [ 22, 33 ]
  end

end