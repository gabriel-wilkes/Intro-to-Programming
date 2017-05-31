VALID_CHOICES = %w(r p s l k)
WIN_CONDITIONS = { 'r' => ['s', 'l'],
                   'p' => ['r', 'k'],
                   's' => ['p', 'l'],
                   'l' => ['k', 'p'],
                   'k' => ['r', 's'] }

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  WIN_CONDITIONS[first].include?(second)
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won the round!")
    'player'
  elsif win?(computer, player)
    prompt("You lost the round!")
    'computer'
  else
    prompt("It's a tie!")
  end
end

prompt('Welcome to Rock, Paper, Scissors, Lizard, Spock!')
prompt('First to 5 round wins is the grand winner of the match.')
player_score = 0
computer_score = 0

loop do
  choice = ''

  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    prompt('(r = rock, p = paper, s = scissors, l = lizard, k = spock)')
    choice = Kernel.gets().chomp()

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You chose: #{choice}; Computer chose: #{computer_choice}")

  winner = display_results(choice, computer_choice)
  if winner == 'player'
    player_score += 1
  elsif winner == 'computer'
    computer_score += 1
  end

  prompt("Your wins: #{player_score}, Computer wins: #{computer_score}")
  Kernel.puts()

  if player_score == 5 || computer_score == 5
    prompt("Congratulations, you won the match!") if player_score == 5
    prompt("Sorry, the computer won the match.") if computer_score == 5
    prompt("Do you want to play again?")
    answer = Kernel.gets().chomp()
    break unless answer.downcase().start_with?('y')
  end
end

prompt("Thank you for playing, good bye!")
