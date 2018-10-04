motivation = 10
puts 'Go! ' * motivation

#to run the file write 'ruby file.rb
#
'-' * 20

age = 17
puts "You are #{age} years old"

puts "Lucky you, it's your birthday"
age = age + 1
puts "You are now #{age}"

puts '*-' * 20

city ='Paris'
population = 2000000
city_details = "#{city}, France"

puts city_details

puts '*-' * 20

def say_hi(name)
    return "Hi #{name}"
end

puts say_hi("Marc")
puts say_hi("Cat")

puts '*-' * 20

def tomorrow
  tomorrow_date = Date.today + 1
  return tomorrow_date.strftime("%B %d")
end

puts tomorrow
