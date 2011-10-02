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

  it "should contain both numbers if two numbers are added" do
    pending
    subject.add(33)
    subject.add(34)
    (subject.contains?(33) && subject.contains?(34)).should be_true
  end

  it "should return the root when getting the only node" do
    subject.add(33)
    subject.get_node(33).should == subject.root
  end
end
