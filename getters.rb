require 'nokogiri'
require 'open-uri'
require 'rubygems'

page = Nokogiri::HTML(open('http://www.metmuseum.org/art/collection/'))
page.css('.card.card--collection').each do |info|
  title = info.at_css('a.ng-binding')
title_url = page.css('.card__title')
  image_url = info.at_css('img')
    body = info.css('.card__text').text
       puts " {
                 Title: #{title}
                 title URL: #{title_url}
                 image URL: #{image_url}
                 body:      #{body}   }"
end
#
# page = Nokogiri::HTML(open('https://www.instagram.com/explore/locations/378453/the-metropolitan-museum-of-art-new-york/'))
# page.css('._4rbun') do |image|
# img = page.css('img._2di5p')[":src"]
#
# puts "#{img}"
# end
