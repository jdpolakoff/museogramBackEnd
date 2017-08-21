# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170818194818) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artworks", force: :cascade do |t|
    t.string "name"
    t.string "artist"
    t.string "date"
    t.string "description"
    t.string "thumbnail_url"
    t.string "img_url"
    t.string "medium"
    t.boolean "on_display"
    t.bigint "museum_id"
    t.index ["museum_id"], name: "index_artworks_on_museum_id"
  end

  create_table "museums", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "description"
    t.string "photo_url"
    t.string "link_out"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "name"
    t.string "title"
    t.string "content"
    t.bigint "artwork_id"
    t.index ["artwork_id"], name: "index_reviews_on_artwork_id"
  end

end
