# Procedural Tic Tac Toe
# cd Code/tealeaf-academy-course1/lesson-1/

def choose_player_character
  begin
    puts "What would you like to play as? [ X / O ]"
    player_character = gets.chomp.upcase
  end until ["X","O"].include?(player_character)
  return player_character
end

def choose_computer_character(player_character)
    computer_character = "X"
    if player_character == "X"
      computer_character = "O"
    end
end

def init_board
  board = {}
  (1..9).each {|position| board[position] = ' ' }
  board
end

def empty_positions(board)
  board.keys.select {|position| board[position] == ' '}
end

def player_chooses(board, character)
  begin
    puts "Please choose a position (1-9)"
    player_position = gets.chomp.to_i
  end until empty_positions(board).include?(player_position)
  board[player_position] = character
end

def computer_chooses(board, character)
  computer_position = empty_positions(board).sample
  board[computer_position] = character  
end

# def check_for_winner(board, player_character, computer_character)
#   winning_lines = [ [1,5,9], [3,5,7], [1,2,3], [4,5,6], [7,8,9], [1,4,7], [2,5,9], [3,6,9] ]  
# end


def check_for_winner(board, player_character, computer_character)
  winning_lines = [[1,2,3], [4,5,6], [7,8,9], [1,4,7], [2,5,8], [3,6,9], [1,5,9], [3,5,7]]
  winning_lines.each do |line|
    puts board.values_at
    return "Player" if board.values_at(*line).count(player_character) == 3
    return "Computer" if board.values_at(*line).count(computer_character) == 3
  end
  nil
end

# [1,5,9], [3,5,7], [1,2,3], [4,5,6], [7,8,9], [1,4,7], [2,5,9], [3,6,9]

def draw_board b
  # system 'clear'
  puts ""
  puts "     |     |     "
  puts "  #{b[1]}  |  #{b[2]}  |  #{b[3]}  "
  puts "     |     |     "
  puts "-----+-----+-----"
  puts "     |     |     "
  puts "  #{b[4]}  |  #{b[5]}  |  #{b[6]}  "
  puts "     |     |     "
  puts "-----+-----+-----"
  puts "     |     |     "
  puts "  #{b[7]}  |  #{b[8]}  |  #{b[9]}  "
  puts "     |     |     "
  puts ""
end

puts "======================================="
puts "Play Tic Tac Toe"
puts "======================================="

player_character = choose_player_character
computer_character = choose_computer_character(player_character)
board = init_board
draw_board(board)

begin
  player_chooses(board, player_character)
  draw_board(board)
  winner = check_for_winner(board, player_character, computer_character)
  computer_chooses(board, computer_character)
  draw_board(board)  
  winner = check_for_winner(board, player_character, computer_character)
end until winner || empty_positions(board) == []

if winner
  puts "#{winner} won!"
else
  puts "It's a tie."
end

