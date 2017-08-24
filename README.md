# Museogram
This repo contains all files needed to run the Museogram app - an application for exploring The Met's open collection of artwork.


## Current Features
- Users can filter art by category
- Users can search the database and find art that meets their search input
- Users can load more art with a "View More" button
- Users can view individual works of art and their details
- Users can view reviews of each work of art
- Users can add reviews to each work of art

## Technologies Used
- Ruby on Rails (back end)
- AngularJS (front end)
- Third Party Angular Directive/Library
- HTML/CSS
- Bootstrap CSS
- JavaScript
- PostgreSQL
- The Met API
- Git Version Control
- Heroku Hosting
- GitHub Pages Hosting

## Installation Instructions
To set up the app locally on your own system:
1. Fork and clone both project repositories [Front End](https://github.com/jdpolakoff/museogramFrontEnd)& [Back End](https://github.com/jdpolakoff/museogramBackEnd)

2. Install all dependencies locally  
    Back End
    ```
    bundle install
    ```
    Front End
    ```
    npm install --save angular-masonry
    ```

3. Ensure you have [PostgreSQL](https://www.postgresql.org/) installed and running. Then, to set up your database from the backend:
    ```
    rails db:create
    rails db:migrate
    ```
4. Lastly, start up your servers and navigate to the indicated port number in your browser:
    Back End
    ```
    rails s
    ```
    Front End
    ```
    hs -c-1
    ```

## Challenges
We experienced a few challenges along the way including setting up the Masonry AngularJS directive with all of the bower components, filtering broken images from the Met's database, syncing create functionality for new reviews between AngularJS and Rails, handling CORS and whitelisting of API during deployment, and version control merge conflicts along the way.

## Potential Additional Features
We'd like to add additional museums for the users to explore, which requires significant manual data mining and cleansing for each museum's API. We also discussed adding User Authentication so users can edit/delete their own comments and authentication with Instagram accounts and API to pull Instagram posts tagged at each museum.

## Team Roles & Responsibilities
Team members: Jonathan Polakoff, Liz Jewell, Rami Taha
- Rails & Angular Set Up & Configuration (Jonathan)
- Angular Routing & Services (Jonathan & Liz)
- Seed data formatting and filtering (Jonathan & Liz)
- Filtering out broken images from API database (Liz)
- Museum Index & Show functionality (Jonathan)
- Artwork Show Styling (Rami)
- Artwork Show Custom Filters (Jonathan & Liz)
- Show/Hide Navbar, Loading GIF, View More button (Liz & Jonathan)
- Reviews Show & Create functionality (All)
- Masonry Display (Jonathan & Liz)
- Bootstrap (Rami)
- All other styling (Team)
- Deployment to Heroku and GH Pages (Jonathan & Liz)
