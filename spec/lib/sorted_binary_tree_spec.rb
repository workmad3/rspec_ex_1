require 'spec_helper'

describe SortedBinaryTree do
  subject {SortedBinaryTree.new}

  it "should be empty" do
    subject.should be_empty
  end
  
  it "should not be empty once an item is added" do
    subject.add(33)
    subject.should_not be_empty
  end

  it "should contain a number that has been added" do
    subject.add(33)
    subject.contains?(33).should be_true
  end

  it "should not contain a number that hasn't been added" do
    subject.add(33)
    subject.contains?(34).should_not be_true
  end

  it "should return itself when getting the root node" do
    subject.add(33)
    subject.get_node(33).should == subject
  end
end

describe "Sorter" do

  it "should create a new sorter node with all instance variables set to nil"   do
    sorter=Sorter.new
    sorter.less_than.should == nil
    sorter.value.should == nil
    sorter.greater_or_equal_than.should == nil
  end

  it "should add a first value to a Sorter correctly" do
    sorter=Sorter.new
    sorter.add(3)
    sorter.value.should == 3
    sorter=Sorter.new
    sorter.add(4)
    sorter.value.should == 4
  end

  it "should add a second number less than the number that is already in the Sorter" do
    sorter = Sorter.new
    sorter.add(33)
    sorter.add(22)
    (sorter.less_than).value.should == 22
    sorter.add(11)
    (sorter.less_than).less_than.value.should == 11
  end

  it "should add a second number equal to the number that is already in the Sorter" do
    sorter = Sorter.new
    sorter.add(223)
    sorter.add(223)
    (sorter.greater_or_equal_than).value.should == 223
  end

  it "should add a second number greater than the number which is already in the Sorter" do
    sorter = Sorter.new
    sorter.add(33)
    sorter.add(44)
    (sorter.greater_or_equal_than).value.should == 44
  end

  it "should add a third number correctly" do
    sorter = Sorter.new
    sorter.add(33)
    sorter.add(22)
    sorter.add(33)
    sorter.value.should == 33
    (sorter.less_than).value.should == 22
    (sorter.greater_or_equal_than).value.should == 33
  end


  it "should be able to sort numbers" do
    sorter = Sorter.new
    sorter.add(33)
    sorter.add(22)
    sorter.sort.should == [ 22, 33 ]
    sorter.add(33)
    sorter.sort.should == [ 22, 33, 33 ]
    sorter.add(10)
    sorter.sort.should == [ 10, 22, 33, 33 ]
    sorter.add(44)
    sorter.sort.should == [ 10, 22, 33, 33, 44 ]
    sorter.add(-1)
    sorter.sort.should == [ -1, 10, 22, 33, 33, 44 ]
  end

end
