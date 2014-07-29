def poker_hand(hand)
  numbers = []
  suites = []
  hand.each do |card|
    numbers << card.gsub(/["JKQA"]/,'J'=>'10','Q'=>'11','K'=>'12','A'=>'13').to_i
    suites << card.slice(-1)
  end
  numbers.sort!.reverse!


  if numbers[0]-4 == numbers[4] && numbers.uniq.length == 5
    result = "straight"
  end
  if suites.all? {|x| x == suites[0]}
    result = "flush"
  end
  result
end

poker_hand(['2D', '3C', '4C', '5C', '6C'])
