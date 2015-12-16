# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20151216005317) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "listings", force: :cascade do |t|
    t.string   "address",     null: false
    t.float    "lat",         null: false
    t.float    "lng",         null: false
    t.string   "placeId",     null: false
    t.float    "rent",        null: false
    t.integer  "bedrooms",    null: false
    t.float    "bathrooms",   null: false
    t.string   "description", null: false
    t.string   "type",        null: false
    t.datetime "date_posted", null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "listings", ["address"], name: "index_listings_on_address", unique: true, using: :btree
  add_index "listings", ["date_posted"], name: "index_listings_on_date_posted", using: :btree
  add_index "listings", ["lat", "lng"], name: "index_listings_on_lat_and_lng", unique: true, using: :btree
  add_index "listings", ["placeId"], name: "index_listings_on_placeId", unique: true, using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",           null: false
    t.string   "name",            null: false
    t.string   "password_digest", null: false
    t.string   "session_token",   null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["session_token"], name: "index_users_on_session_token", unique: true, using: :btree

end