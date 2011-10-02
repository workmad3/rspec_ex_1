require 'spec_helper'

describe SortedBinaryTree do
  subject {SortedBinaryTree.new}
  context "adding items" do
    it "should be empty when no items are added" do
      subject.should be_empty
    end

    it "should not be empty when an item is added" do
      subject.add(33)
      subject.should_not be_empty
    end

    it "should have a count of 0 when no items are added" do
      subject.count.should == 0
    end

    it "should have a count of 1 when one item is added" do
      subject.add(33)
      subject.count.should == 1
    end

    it "should have a count of 2 when two items are added" do
      subject.add(33)
      subject.add(34)
      subject.count.should == 2
    end
  end

  context "querying" do
    it "should return false when no items are added" do
      subject.include?(33).should be_false
    end

    it "should return true when 33 is added and 33 is queried for" do
      subject.add(33)
      subject.include?(33).should be_true
    end

    it "should return false when 33 is added and 34 is queried for" do
      subject.add(33)
      subject.include?(34).should be_false
    end

    it "should return true when 33 and 34 are added and 33 is queried for" do
      subject.add(33)
      subject.add(34)
      subject.include?(33).should be_true
    end

    it "should return true when 33 and 34 are added and 34 is queried for" do
      subject.add(33)
      subject.add(34)
      subject.include?(34).should be_true
    end

    it "should return false when 33 and 34 are added and 35 is queried for" do
      subject.add(33)
      subject.add(34)
      subject.include?(35).should be_false
    end
  end

  context "removing items" do
    before do
      subject.add(33)
      subject.add(34)
      subject.add(35)
    end

    it "should return false when 33 is removed and 33 is queried for" do
      subject.remove(33)
      subject.include?(33).should be_false
    end

    it "should return true when 33 is removed and 34 is queried for" do
      subject.remove(33)
      subject.include?(34).should be_true
    end

    it "should return true when 33 and 34 are removed and 35 is queried for" do
      subject.remove(33)
      subject.remove(34)
      subject.include?(35).should be_true
    end
  end

  context "getting sorted output" do
    before do
      subject.add(34)
      subject.add(35)
      subject.add(32)
    end

    it "should provide a sorted array with .to_a" do
      subject.to_a.should == [32, 34, 35]
    end
  end
end
