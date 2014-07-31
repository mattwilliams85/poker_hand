def poker_hand(hand)
  values = []
  suites = []
  result = ""
  hand.each do |card|
    values << card.gsub(/["JKQA"]/,'J'=>'11','Q'=>'12','K'=>'13','A'=>'14').to_i
    suites << card.slice(-1)
  end

  values.sort!.reverse!

  if values[0]-4 == values[4] && values.uniq.length == 5
    result = "straight"
  end

  if suites.all? {|x| x == suites[0]}
    result = result + " flush"
  end

  if values.count(values[1]) + values.count(values[3]) == 5
    result = "full-house"
  elsif values.uniq.length == 4
    result = "two of a kind"
  elsif values.uniq.length == 3
    if values.count(values[0]) == 2 || values.count(values[1]) == 2
      result = "two pair"
    else
      result = "three of a kind"
    end
  elsif values.uniq.length == 2
    result = "four of a kind"
  end

  if result == "straight flush" && (values.reduce :+) == 60
    "royal flush"
  else
    result.strip
  end
end

