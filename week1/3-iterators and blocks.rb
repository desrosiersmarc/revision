musicians = ["Jojo", "Juju", "Jaya", "Jeannot"]

upcased_musicians = musicians.map do |musician|
  musician.downcase
end


upcased_musicians.each_with_index do |musician, index|
  puts "#{index+1}=>Hello #{musician}"
end

musicians_name = musicians.map do |musician|
  if musician == "Jojo"
    musician = musician + " DESROSIERS"
  else
    musician = musician
  end
end

musicians_name.each {|musician| puts "One line #{musician}" }

#Use yield
def beautify_name(first_name, last_name)
  full_name = "#{first_name.capitalize} #{last_name.upcase}"
  yield(full_name)
end

message = beautify_name("jaya", "desrosiers") do |name|
  "Greetings #{name}, you look quite fine today !"
end
puts message
