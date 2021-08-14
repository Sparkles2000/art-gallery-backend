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

ActiveRecord::Schema.define(version: 2021_08_13_022906) do

  create_table "artists", force: :cascade do |t|
    t.string "name"
    t.string "text"
    t.integer "artist_established"
    t.integer "gallery_id"
    t.index ["gallery_id"], name: "index_artists_on_gallery_id"
  end

  create_table "artworks", force: :cascade do |t|
    t.string "name"
    t.string "text"
    t.integer "published_date"
    t.integer "artist_established"
    t.integer "artist_id"
    t.index ["artist_id"], name: "index_artworks_on_artist_id"
  end

  create_table "galleries", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.integer "established_date"
  end

end
