require ('rspec')
require ('poker')

describe "poker_hand" do
  it "recognizes a flush without face-cards" do
    poker_hand(['2C', '7C', '4C', '5C', '6C']).should eql "flush"
  end
  it "recognizes a straight without face-cards" do
    poker_hand(['2C', '3D', '4H', '5C', '6C']).should eql "straight"
  end
  it "recognizes a flush with face-cards" do
    poker_hand(['2H', 'AH', 'KH', '5H', '6H']).should eql "flush"
  end
  it "recognizes a straight with face-cards" do
    poker_hand(['9C', 'JD', 'KH', 'QC', '10C']).should eql "straight"
  end
  it "recognizes a straight flush" do
    poker_hand(['10D', 'JD', 'KD', 'QD', 'AD']).should eql "straight flush"
  end
  it "recognizes 2 of a kind" do
    poker_hand(['9C', '9D', 'KH', 'QC', '10C']).should eql "two of a kind"
  end
  it "recognizes 3 of a kind" do
    poker_hand(['9C', '9D', '9H', 'QC', '10C']).should eql "three of a kind"
  end
  it "recognizes 4 of a kind" do
    poker_hand(['9C', '9D', '9H', '9C', '10C']).should eql "four of a kind"
  end
end
