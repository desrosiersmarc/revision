require 'json'
require 'open-uri'

puts "What's your github user name?"
user_name = gets.chomp

url = 'https://api.github.com/users/' + user_name
user_serialized = open(url).read
user = JSON.parse(user_serialized)

puts "#{user['name']} - #{user['bio']}"
puts "Company : #{user['company']}"
puts "Public repository number : #{user['public_repos']}"
puts "Followers : #{user['followers']}"
