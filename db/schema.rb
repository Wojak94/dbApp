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

ActiveRecord::Schema.define(version: 20160126200508) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bikes", force: :cascade do |t|
    t.integer  "station_id"
    t.string   "bike_status"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "password"
    t.string   "password_confirmation"
    t.integer  "location_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.string   "type"
  end

  create_table "locations", force: :cascade do |t|
    t.string   "street"
    t.string   "flat_number"
    t.string   "city"
    t.string   "postcode"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "operators", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rents", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "bike_id"
    t.integer  "rent_place_id"
    t.integer  "return_place_id"
    t.datetime "rent_time"
    t.datetime "return_time"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "repairs", force: :cascade do |t|
    t.integer  "bike_id"
    t.integer  "serviceman_id"
    t.datetime "start_time"
    t.datetime "end_time"
    t.string   "repair_status"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "reports", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "operator_id"
    t.datetime "report_time"
    t.text     "report_content"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "servicemen", force: :cascade do |t|
    t.string   "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stations", force: :cascade do |t|
    t.integer  "location_id"
    t.integer  "bike_quantity"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password"
    t.float    "money_status"
    t.integer  "location_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.string   "password_confirmation"
  end

end
