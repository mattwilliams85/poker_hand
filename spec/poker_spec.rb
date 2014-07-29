require ('rspec')
require ('poker')

describe "poker_hand" do
  it "recognizes a flush without face-cards" do
    poker_hand(['2C', '3C', '4C', '5C', '6C']).should eql "flush"
  end
end
