# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Museum.destroy_all
Artwork.destroy_all
Review.destroy_all

# I found this option for checking if our images actually exist before adding them to our database. Will play more with this tomorrow
require "net/http"
def url_exist?(url_string)
  url = URI.parse(url_string)
  req = Net::HTTP.new(url.host, url.port)
  res = req.request_head(url.path)
  return res.code
end
queries = ['Paintings', 'Sculptures', 'Drawings']

theMet = Museum.create(name: "Metropolitan Museum of Art",
address: "1000 5th Ave, New York, NY 10028",
description: "The Metropolitan Museum of Art, colloquially 'the Met' is located in New York City and is the largest art museum in the United States, and is among the most visited art museums in the world. (via Wikipedia)",
photo_url: "https://static.pexels.com/photos/69903/pexels-photo-69903.jpeg",
link_out: "http://www.metmuseum.org/")

queries.each do |query|
  puts query
  artwork_data = HTTParty.get("https://www.metmuseum.org/api/collection/collectionlisting?artist=&department=&era=&geolocation=&material=#{query}&offset=0&pageSize=0&perPage=100&showOnly=&sortBy=Relevance&sortOrder=asc")
  artwork_data["results"].each do |artwork|
    # if url_exist?(artwork["image"]) == "200"
      if !artwork["image"].start_with?("http")
          next
        else
          new_artwork = Artwork.create!(
          name: artwork["title"],
          artist: artwork["description"],
          date: artwork["date"],
          img_url: artwork["image"],
          medium: artwork["medium"],
          on_display: artwork["galleryInformation"],
          category: query,
          museum: theMet
          )
      end
    # end
end
# end
