puts "Use csv file"
require "csv"
CSV.foreach("file.csv") do |row|
  print "#{row[0]}-#{row[1]}-#{row[2]}"
  puts ""
end

puts "-" * 12
puts "Use json"

cities = {
  name: "Paris",
  population: 2211000
}

require "json"
puts "#{JSON.parse(cities)}"
