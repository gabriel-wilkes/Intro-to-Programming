require 'pry'

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
FIRST_MOVE = 'choose'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # cols
                [[1, 5, 9], [3, 5, 7]]              # diagonals

def prompt(msg)
  puts "=> #{msg}"
end

# rubocop:disable Metrics/AbcSize
def display_board(brd, player_wins, computer_wins)
  system 'clear'
  puts "First to win 5 rounds wins the game."
  puts "Current score, Player: #{player_wins} Computer: #{computer_wins}"
  puts "You're a #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}"
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end
# rubocop:enable Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  #new_board = {1 => 'X', 2 => 'O', 3 => 'X', 4 => 'X', 5 => 'O', 6 => 'X', 7 => 'O', 8 => 'X', 9 => 'O' }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def joinor(arr, delimiter = ', ', word = 'or')
  case arr.size
  when 0 then ''
  when 1 then arr.first
  when 2 then arr.join(" #{word} ")
  else
    arr[-1] = word + ' ' + arr.last.to_s
    arr.join(delimiter)
  end
end

def places_piece!(brd, player)
  if player == 'Player'
    square = ''
    loop do
      prompt "Choose a square (#{joinor(empty_squares(brd))}):"
      square = gets.chomp.to_i
      break if empty_squares(brd).include?(square) || board_full?(brd)
      prompt "Sorry, that's not a valid choice."
    end
    brd[square] = PLAYER_MARKER
  else
    WINNING_LINES.each do |line|
      if ((brd.values_at(*line).count(COMPUTER_MARKER) == 2) && 
         (brd.values_at(*line).count(PLAYER_MARKER) == 0))
        square = line[brd.values_at(*line).index(INITIAL_MARKER)]
        brd[square] = COMPUTER_MARKER
        return
      elsif ((brd.values_at(*line).count(PLAYER_MARKER) == 2) &&
            (brd.values_at(*line).count(COMPUTER_MARKER) == 0))
        square = line[brd.values_at(*line).index(INITIAL_MARKER)]
        brd[square] = COMPUTER_MARKER
        return
      end
    end
    if brd[5] == INITIAL_MARKER
      brd[5] = COMPUTER_MARKER
    else
      square = empty_squares(brd).sample
      brd[square] = COMPUTER_MARKER
    end
  end
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

player_wins = 0
computer_wins = 0

loop do
  board = initialize_board
  case FIRST_MOVE
  when 'player'
    player_turn = true
  when 'computer'
    player_turn = false
  when 'choose'
    prompt "Who should go first Player (p) or Computer (c)?"
    answer = gets.chomp
    if answer.downcase.start_with?('p')
      player_turn = true
    else
      player_turn = false
    end
  end

  loop do
    display_board(board, player_wins, computer_wins)

    if player_turn
      player_turn = false
      player = 'Player'
    else
      player_turn = true
      player = 'Computer'
    end

    places_piece!(board, player)
    if someone_won?(board) || board_full?(board)
      if detect_winner(board) == 'Computer'
        computer_wins += 1
        break
      elsif detect_winner(board) == 'Player'
        player_wins += 1
        break
      else
        break
      end
    end
  end

  display_board(board, player_wins, computer_wins)

  if someone_won?(board)
    prompt "#{detect_winner(board)} won the round!"
  else
    prompt "It's a tie!"
  end
 
  if player_wins >= 5 || computer_wins >= 5
    if player_wins >= 5
      prompt "Congratulations Player, you won the game!"
    else
      prompt "Sorry Player, Computer won the game."
    end
    prompt "Play again? (y or n)"
    answer = gets.chomp
    break unless answer.downcase.start_with?('y')
  end
  prompt "Proceed to next round? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thanks for playing Tic Tac Toe! Good bye!"
