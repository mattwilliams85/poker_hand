def poker_hand(hand)
  numbers = []
  suites = []
  result = ""
  hand.each do |card|
    ## Converts face-cards to numbers and seperates card value and suite into seperate arrays ##
    numbers << card.gsub(/["JKQA"]/,'J'=>'11','Q'=>'12','K'=>'13','A'=>'14').to_i
    suites << card.slice(-1)
  end
  ## Sorts the card values in descending order ##
  numbers.sort!.reverse!

  if numbers[0]-4 == numbers[4] && numbers.uniq.length == 5
    result = "straight"
  end
  if numbers.count(numbers[1]) + numbers.count(numbers[3]) == 5
    result = "full-house"
  elsif numbers.uniq.length == 4
    result = "two of a kind"
  elsif numbers.uniq.length == 3
    if numbers.count(numbers[0]) == 2 || numbers.count(numbers[1]) == 2
      result = "two pair"
    else
      result = "three of a kind"
    end
  elsif numbers.uniq.length == 2
    result = "four of a kind"
  end

  if suites.all? {|x| x == suites[0]}
    result = result + " flush"
  end

  if result == "straight flush" && (numbers.reduce :+) == 60
    "royal flush"
  else
    result.strip
  end
end

