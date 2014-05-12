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

ActiveRecord::Schema.define(version: 20140511190500) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "locations", force: true do |t|
    t.string   "city"
    t.string   "state_code"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tasks", force: true do |t|
    t.string   "name"
    t.datetime "deadline"
    t.boolean  "completed"
    t.datetime "date_completed"
    t.integer  "priority"
    t.text     "notes"
    t.string   "links"
    t.string   "category"
    t.string   "contact"
    t.string   "location"
    t.string   "comm_info"
    t.datetime "last_worked_on"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "sub_category"
    t.integer  "user_id"
    t.integer  "done_for_today"
  end

end
