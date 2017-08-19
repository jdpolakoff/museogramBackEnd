require 'nokogiri'
require 'open-uri'
require 'rubygems'

page = Nokogiri::HTML(open('http://naturalhistory.si.edu/exhibits'))
page.css('.exhibit-feature').each do |info|
  title = info.css('a').text
title_url = page.at_css('a')['href']
  image_url = info.at_css('img')["src"]
    body = info.css('p').text
       puts " {
                 Title: #{title}
                 title URL: #{title_url}
                 image URL: http://naturalhistory.si.edu/exhibits/#{image_url}
                 body: #{body}   }"
end
#
# page = Nokogiri::HTML(open('https://www.instagram.com/explore/locations/378453/the-metropolitan-museum-of-art-new-york/'))
# page.css('._4rbun') do |image|
# img = page.css('img._2di5p')[":src"]
#
# puts "#{img}"
# end
