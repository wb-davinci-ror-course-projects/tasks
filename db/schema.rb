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

ActiveRecord::Schema.define(version: 20140528044029) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "careers", force: true do |t|
    t.string   "area"
    t.string   "next_up"
    t.text     "notes"
    t.string   "links"
    t.string   "materials"
    t.integer  "priority"
    t.datetime "last_worked_on"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fit_posts", force: true do |t|
    t.datetime "date"
    t.integer  "weight"
    t.text     "focus"
    t.string   "breakfast"
    t.integer  "brk_cals"
    t.string   "lunch"
    t.integer  "lunch_cals"
    t.string   "dinner"
    t.integer  "dinner_cals"
    t.boolean  "water_extract_64oz"
    t.string   "exercise"
    t.text     "accomplishment"
    t.boolean  "model_day"
    t.boolean  "energy"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "cal_track_complete"
    t.integer  "snack_cals"
    t.string   "snacks"
    t.integer  "user_id"
  end

  create_table "links", force: true do |t|
    t.string   "description"
    t.string   "address"
    t.text     "notes"
    t.integer  "rank"
    t.string   "language"
    t.string   "category"
    t.boolean  "visited"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", force: true do |t|
    t.string   "city"
    t.string   "state_code"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "studies", force: true do |t|
    t.string   "name"
    t.text     "next_up"
    t.boolean  "done_for_today"
    t.datetime "deadline"
    t.integer  "priority"
    t.string   "category"
    t.string   "links"
    t.string   "material"
    t.boolean  "completed"
    t.text     "notes"
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
    t.boolean  "done_for_today"
    t.date     "just_date"
  end

end
