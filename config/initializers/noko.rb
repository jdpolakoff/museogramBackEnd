require 'nokogiri'
require 'open-uri'
require 'rubygems'
# Fetch and parse HTML document
page = Nokogiri::HTML(open('https://www.instagram.com/explore/locations/378453/the-metropolitan-museum-of-art-new-york/'))
page.css('._21z45').each do |image|
  # title = news.at_css('.ME7ew').text
  # title_url = news.at_css('.ME7ew')['href']
    image_url = news.at_css('._si7dy')['src']
    # time = news.at_css('.YBZVLb').text
    # source = news.at_css('.Pc0Wt').text
    puts " {Image URL #{image_url} "
end
