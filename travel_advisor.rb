require 'open-uri'
require 'nokogiri'

doc = Nokogiri::HTML(open("http://www.voyage.gc.ca/countries_pays/menu-eng.asp"))
doc.xpath('//span[@class="red"]').each do |node|
  puts node.previous_element().text
end
