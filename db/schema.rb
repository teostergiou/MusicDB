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

ActiveRecord::Schema.define(version: 20170524054317) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "albums", force: :cascade do |t|
    t.string "name"
    t.date "release_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "artists", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.string "country"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bandmembers", force: :cascade do |t|
    t.bigint "band_id"
    t.bigint "artist_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["artist_id"], name: "index_bandmembers_on_artist_id"
    t.index ["band_id"], name: "index_bandmembers_on_band_id"
  end

  create_table "bands", force: :cascade do |t|
    t.string "name"
    t.string "genre"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "photos", force: :cascade do |t|
    t.bigint "album_id"
    t.bigint "artist_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.index ["album_id"], name: "index_photos_on_album_id"
    t.index ["artist_id"], name: "index_photos_on_artist_id"
  end

  create_table "songs", force: :cascade do |t|
    t.string "name"
    t.string "genre"
    t.bigint "album_id"
    t.bigint "artist_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["album_id"], name: "index_songs_on_album_id"
    t.index ["artist_id"], name: "index_songs_on_artist_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.boolean "is_admin", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end