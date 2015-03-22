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

ActiveRecord::Schema.define(version: 20150322025730) do

  create_table "beta_signups", primary_key: "email", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at"
  end

  create_table "carpool_candidates", force: :cascade do |t|
    t.integer  "user_id",    limit: 4,                   null: false
    t.string   "address",    limit: 255
    t.string   "city",       limit: 255
    t.string   "state",      limit: 2
    t.integer  "zip",        limit: 4
    t.float    "latitude",   limit: 53
    t.float    "longitude",  limit: 53
    t.boolean  "is_driver",  limit: 1,   default: false
    t.datetime "created_at"
  end

  create_table "carpools", force: :cascade do |t|
    t.integer  "event_id",   limit: 4, null: false
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "created_at"
  end

  create_table "events", force: :cascade do |t|
    t.string   "name",             limit: 255
    t.string   "address",          limit: 255
    t.string   "city",             limit: 255
    t.string   "state",            limit: 2
    t.integer  "zip",              limit: 4
    t.float    "latitude",         limit: 53
    t.float    "longitude",        limit: 53
    t.datetime "event_start_date"
    t.datetime "event_end_date"
    t.datetime "created_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name", limit: 255
    t.string   "last_name",  limit: 255
    t.string   "email",      limit: 255
    t.integer  "phone",      limit: 8
    t.string   "gender",     limit: 0
    t.datetime "created_at"
  end

end
