require ('rspec')
require ('poker')

describe "poker_hand" do
  it "recognizes a flush without face-cards" do
    poker_hand(['2C', '7C', '4C', '5C', '6C']).should eql "flush"
  end
  it "recognizes a straight without face-cards" do
    poker_hand(['2C', '3D', '4H', '5C', '6C']).should eql "straight"
  end
end
