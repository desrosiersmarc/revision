paris = {
  "country" => "France",
  "population" => "221100"
}

puts paris

print "Add a key / value : "

paris["state_monument"] = "Tour Eiffel"

puts paris

print "Delete a key/value : "
paris.delete("state_monument")
puts paris

puts "Display hash with a each : "

paris.each do |key, value|
  puts "Paris #{key} is #{value}"
end

puts "Custom methods for a HASH"
print "paris.key?('country') : "
puts paris.key?("country")
print "paris.key?('language') : "
puts paris.key?("language")
print "paris.keys : "
print paris.keys
puts ""
print "paris.values : "
print paris.values
puts""

cities = {
  "London" => {"country" => "England", "monument" => "Big Ben"},
  "Paris" => {"country" => "France", "monument" => "Tour Eiffel"}
}

puts "Exemple : #{cities['Paris']['monument']}"

#New syntax

cities = {
  london: {country: "England", monument: "Big Ben"},
  paris: {country: "France", monument: "Tour Efifel"}
}

puts "Exemple with new syntax of symbol : #{cities[:paris][:monument]}"

puts "Let's code an html generator"

def tag(name, content, attrs = {})
  flat_attrs = attrs.map {|key, value| "#{key}='#{value}'"}.join
  return "<#{name} #{flat_attrs}>#{content}</#{name}>"
end

puts "Test the html generator"
puts "#{tag('h1', 'Hello World!', {class: 'bold'})}"
