# Procedural Rock, Paper, Scissors

puts "======================================="
puts "Play Rock, Paper, Scissors!"
puts "======================================="

RPS = { "r" => "Rock", "p" => "Paper", "s" => "Scissors" }

def display_winning_text(winner)
  puts winner
  case winner
  when "r"
    puts "Rock breaks scissors!"
  when "p"
    puts "Paper wraps rock!"
  when "s"
    puts "Scissors cut paper!" 
  end         
end

loop do
 
  begin
    puts "Choose one: [ R / P / S ]"
    user_selection = gets.chomp.downcase
    computer_selection = RPS.keys.sample
  end until RPS.keys.include?(user_selection)

  puts "You picked #{RPS[user_selection]} and the computer picked #{RPS[computer_selection]}."

  if RPS[user_selection] == RPS[computer_selection]
    puts "It's a tie!"
  elsif user_selection == "r" && computer_selection == "s" ||
        user_selection == "s" && computer_selection == "p" ||
        user_selection == "p" && computer_selection == "r"      
    display_winning_text user_selection
    puts "You win!"
  else
    display_winning_text computer_selection
    puts "You lose!"
  end

  puts "Press y to play again"
  break unless gets.chomp.downcase == 'y'

end

puts "Later gator!"