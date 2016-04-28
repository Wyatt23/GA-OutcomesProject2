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

ActiveRecord::Schema.define(version: 20160428004937) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assignments", force: :cascade do |t|
    t.string   "title"
    t.text     "instructions"
    t.date     "due_date"
    t.string   "ga_focus"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "brands", force: :cascade do |t|
    t.text     "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "student_id"
  end

  add_index "brands", ["student_id"], name: "index_brands_on_student_id", using: :btree

  create_table "companies", force: :cascade do |t|
    t.string   "company_name"
    t.integer  "student_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "companies", ["student_id"], name: "index_companies_on_student_id", using: :btree

  create_table "meetups", force: :cascade do |t|
    t.string   "meetup_name"
    t.string   "location"
    t.string   "date_of_meetup"
    t.integer  "student_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "meetups", ["student_id"], name: "index_meetups_on_student_id", using: :btree

  create_table "resources", force: :cascade do |t|
    t.string   "topic"
    t.string   "url"
    t.string   "ga_focus"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "ga_focus"
    t.string   "cohort_number"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_foreign_key "brands", "students"
  add_foreign_key "companies", "students"
  add_foreign_key "meetups", "students"
end
