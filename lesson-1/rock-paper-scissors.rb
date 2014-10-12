# Procedural Rock, Paper, Scissors

def computer_choice
  ["r", "p", "s"].sample(1).flatten
end

puts "======================================="
puts "Play Rock, Paper, Scissors!"
puts "======================================="

rps = { "r" => "Rock", "p" => "Paper", "s" => "Scissors" }


puts "Choose one: [ R / P / S ]"
user_selection = gets.chomp
# computer_selection
computer_selection = computer_choice[0]

# puts user_selection.class
# puts rps[computer_selection]
puts "You picked #{rps[user_selection.downcase]} and the computer picked #{rps[computer_selection]}"
# # puts rps[user_input.downcase]


# # p rps.sample(1)


# puts computer_choice

# computer_selection = computer_choice

# puts rps[computer_selection.to_s]