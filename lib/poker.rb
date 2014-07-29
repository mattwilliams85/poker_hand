def poker_hand(hand)
  numbers = []
  suites = []
  hand.each do |card|
    numbers << card.to_i
    suites << card.slice(-1)
  end
  if suites.all? {|x| x == suites[0]}
    "flush"
  end
end

poker_hand(['2D', '3C', '4C', '5C', '6C'])
