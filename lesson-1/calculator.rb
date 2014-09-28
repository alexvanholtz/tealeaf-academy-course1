# Procedural Ruby Calculator

def ask_for_num
  puts "Pick a number"
  gets.chomp
end 

num1 = ask_for_num
num2 = ask_for_num

puts "Your numbers are #{num1} and #{num2}"
puts "What would you like to do? Choose 1-4 to continue."
puts "  1) Addition"
puts "  2) Subtraction"
puts "  3) Multiplication"
puts "  4) Division"

while operator = gets.chomp
  case operator.to_i
  when 1
    result = num1.to_i + num2.to_i
    puts "#{num1} + #{num2} = #{result}"
    break
  when 2
    result = num1.to_i - num2.to_i
    puts "#{num1} - #{num2} = #{result}"
    break
  when 3
    result = num1.to_i * num2.to_i
    puts "#{num1} * #{num2} = #{result}"
    break
  when 4
    result = num1.to_f / num2.to_f
    puts "#{num1} / #{num2} = #{result}"
    break
  else
    puts "That was not a valid selection. Choose 1-4 to continue."        
  end
end  