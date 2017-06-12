GAME_GOAL = 31
COMP_HIT_UNTIL = 27 

def init_deck
  { '2' => 4, '3' => 4, '4' => 4, '5' => 4, '6' => 4, '7' => 4, '8' => 4,
    '9' => 4, '10' => 4, 'Jack' => 4, 'Queen' => 4, 'King' => 4, 'Ace' => 4 }
end

def prompt(msg)
  puts "☞  #{msg}"
end

def hand_value(hand)
  value = 0
  ace_count = 0
  hand.each do |card|
    if card.to_i.to_s == card
      value += card.to_i
    elsif card != 'Ace'
      value += 10
    else
      ace_count += 1
    end
  end
  while ace_count > 0
    if ace_count == 1 && value <= (GAME_GOAL - 11)
      value += 11
      break
    else
      value += 1
      ace_count -= 1
    end
  end
  value
end

def busted?(hand)
  if hand_value(hand) > GAME_GOAL
    true
  else
    false
  end
end

def who_won(player, computer)
  if hand_value(player) == hand_value(computer)
    "Tie"
  elsif hand_value(player) > hand_value(computer)
    "Player"
  else
    "Computer"
  end
end

def print_winner(winner)
  if winner == "Tie"
    prompt "It's a tie!"; puts
  else
    prompt "#{winner} won!"; puts
  end
end

def draw_card(hand, deck)
  card = deck.keys.sample
  deck[card] -= 1
  if deck[card] == 0
    deck.delete(card)
  end
  if deck == {}
    deck = init_deck
  end
  hand << card
  deck
end

def print_status(string, hand)
  print "☞  #{string}"
  hand.each_with_index do |card, i|
    if (hand.length - 1) == i
      if string == 'Dealer has: '
        puts " and unknown card"
      else
        puts " and #{card}"
      end
    elsif i == 0
      print card
    else
      print ", #{card}"
    end
  end
end

deck = init_deck
answer = nil
first_play = true
puts "♤ ♧ ♡ ♢  Welcome to #{GAME_GOAL}  ♤ ♧ ♡ ♢"
prompt "First to win 5 rounds is the winner"
player_score = 0
computer_score = 0
result = ''

loop do
  unless first_play
    prompt "Score, Player: #{player_score} Dealer: #{computer_score}"
    if player_score >= 5 || computer_score >= 5
      prompt "#{result} is the winner of the game!"; puts
      player_score = 0
      computer_score = 0
    end
    prompt "Play another hand? (y or n)"
    answer = gets.chomp
    break unless answer.downcase.start_with?('y')
  end
  puts
  first_play = false
  player_hand = []
  computer_hand = []
  2.times { deck = draw_card(player_hand, deck) }
  2.times { deck = draw_card(computer_hand, deck) }

  loop do
    print_status('Dealer has: ', computer_hand)
    print_status('You have: ', player_hand)
    prompt "hit or stay?"
    answer = gets.chomp
    break if answer.downcase.start_with?('s') || busted?(player_hand)
    deck = draw_card(player_hand, deck)
  end
  puts

  if busted?(player_hand)
    prompt "Sorry you busted, you lost!"; puts
    computer_score += 1
    next
  else
    prompt "You chose to stay!"
  end

  loop do
    break if hand_value(computer_hand) >= COMP_HIT_UNTIL || busted?(computer_hand)
    deck = draw_card(computer_hand, deck)
  end

  if busted?(computer_hand)
    print_status('Dealer had: ', computer_hand)
    prompt "Dealer busted, you win!"; puts
    player_score += 1
    next
  end

  result = who_won(player_hand, computer_hand)
  case result
  when "Computer"
    computer_score += 1
  when "Player"
    player_score += 1
  end

  print_status('Dealer had: ', computer_hand)
  print_status('You had: ', player_hand)
  print_winner(result)
end
puts "Good bye!"
