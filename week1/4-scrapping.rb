# require 'open-uri'
# require 'nokogiri'

# html_content = open('https://www.leboncoin.fr/locations_gites/1108571915.htm/').read
# doc = Nokogiri::HTML(html_content)

# doc.search('.CalendarDay').each_with_index do |element, index|
#   puts "#{index + 1}. #{element.text.strip}"
# end


require 'open-uri'
require 'nokogiri'

html_content = open('https://www.etsy.com/search?q=wallet').read
doc = Nokogiri::HTML(html_content)

doc.search('.block-grid-xs-2 .v2-listing-card__info .text-body').each_with_index do |element, index|
  puts "#{index + 1}. #{element.text.strip}"
end
