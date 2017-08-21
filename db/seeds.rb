# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Museum.destroy_all
Artwork.destroy_all

theMet = Museum.create(name: "Metropolitan Museum of Art",
address: "1000 5th Ave, New York, NY 10028",
description: "The Metropolitan Museum of Art, colloquially 'the Met' is located in New York City and is the largest art museum in the United States, and is among the most visited art museums in the world. (via Wikipedia)",
photo_url: "https://static.pexels.com/photos/69903/pexels-photo-69903.jpeg",
link_out: "http://www.metmuseum.org/")

lady = Artwork.create(name: "Portrait of a Lady",
artist: "Henry Inman",
date: "ca. 1820",
thumbnail_url: "http://images.metmuseum.org/CRDImages/ap/web-additional/ap25.178.5.jpg",
img_url: "http://images.metmuseum.org/CRDImages/ap/mobile-large/ap25.178.5.jpg",
medium: "Watercolor on ivory",
on_display: false,
museum: theMet
)

Artwork.create(name: "Faces no.10",
artist: "Y.Z. Kami",
date: "1992",
thumbnail_url: "http://images.metmuseum.org/CRDImages/ma/web-additional/DP263547.jpg",
img_url: "http://images.metmuseum.org/CRDImages/ma/web-large/DP263547.jpg",
medium: "Oil on canvas",
on_display: false,
museum: theMet
)

Artwork.create(name: "third artwork",
artist: "Y.Z. Kami",
date: "1992",
thumbnail_url: "http://images.metmuseum.org/CRDImages/ma/web-additional/DP263547.jpg",
img_url: "http://images.metmuseum.org/CRDImages/ma/web-large/DP263547.jpg",
medium: "Oil on canvas",
on_display: false,
museum: theMet
)

lady.reviews.create(
name: 'Joey',
title: 'Best painting ever',
content: 'JK SUCKS'
)
