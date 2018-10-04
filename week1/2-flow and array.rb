puts "What's your age?"

age = gets.chomp.to_i

if age >= 18
  puts "you can vote!"
else
  puts "too young to vote... You have to wait #{18 - age } years"
end

puts " ;O) " * 10

puts "heads or tails"
choice = gets.chomp
coin = ["heads", "tails"].sample

result = (choice == coin) ? "winner" : "loser"
puts "#{result}, that was #{coin}"

#Done
