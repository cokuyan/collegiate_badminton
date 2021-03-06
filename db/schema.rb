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

ActiveRecord::Schema.define(version: 20151220014752) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string "name",     null: false
    t.string "email",    null: false
    t.string "password", null: false
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true, using: :btree
  add_index "admins", ["name"], name: "index_admins_on_name", unique: true, using: :btree

  create_table "contacts", force: :cascade do |t|
    t.string   "first_name",                 null: false
    t.string   "last_name",                  null: false
    t.string   "email",                      null: false
    t.string   "title",                      null: false
    t.boolean  "current",    default: false
    t.integer  "school_id",                  null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "password",                   null: false
  end

  add_index "contacts", ["email"], name: "index_contacts_on_email", unique: true, using: :btree
  add_index "contacts", ["school_id"], name: "index_contacts_on_school_id", using: :btree

  create_table "divisions", force: :cascade do |t|
    t.string "name",        null: false
    t.text   "description"
  end

  add_index "divisions", ["name"], name: "index_divisions_on_name", unique: true, using: :btree

  create_table "regions", force: :cascade do |t|
    t.string "name",        null: false
    t.text   "description"
  end

  add_index "regions", ["name"], name: "index_regions_on_name", unique: true, using: :btree

  create_table "schools", force: :cascade do |t|
    t.string   "name",        null: false
    t.integer  "division_id", null: false
    t.integer  "region_id",   null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "schools", ["division_id"], name: "index_schools_on_division_id", using: :btree
  add_index "schools", ["name"], name: "index_schools_on_name", using: :btree
  add_index "schools", ["region_id"], name: "index_schools_on_region_id", using: :btree

  create_table "sessions", force: :cascade do |t|
    t.integer  "sessionable_id",   null: false
    t.string   "session_token",    null: false
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "sessionable_type"
  end

  add_index "sessions", ["session_token"], name: "index_sessions_on_session_token", unique: true, using: :btree
  add_index "sessions", ["sessionable_id", "sessionable_type"], name: "index_sessions_on_sessionable_id_and_sessionable_type", using: :btree

end
