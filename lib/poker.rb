def poker_hand(hand)
  numbers = []
  suites = []
  result = ""
  hand.each do |card|
    numbers << card.gsub(/["JKQA"]/,'J'=>'11','Q'=>'12','K'=>'13','A'=>'14').to_i
    suites << card.slice(-1)
  end
  numbers.sort!.reverse!

  if numbers[0]-4 == numbers[4] && numbers.uniq.length == 5
    result = "straight"
  end
  if suites.all? {|x| x == suites[0]}
    puts "true"
    result = result + " flush"
  elsif numbers.uniq.length == 4
    result = "two of a kind"
  elsif numbers.uniq.length == 3
    result = "three of a kind"
  elsif numbers.uniq.length == 2
    result = "four of a kind"
  end
  puts numbers.uniq.length
  result.strip
end

poker_hand(['9C', '9D', 'KH', 'QC', 'AC'])
