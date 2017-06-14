def lights(rounds)
  switches = (1..rounds).map { |_| false }
  rounds.times do |round|
    switch(switches, round)
  end
  switches.map!.with_index do |switch, idx|
    switch ? idx + 1 : switch
  end
  switches.select! do |switch|
    switch
  end
end

def switch(switches, round)
  switches.map!.with_index do |switch, idx|
     (((idx+1) % (round+1)) == 0) ? !switch : switch
  end
end

p lights(5)
p lights(10)
p lights(1000)
