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

ActiveRecord::Schema.define(version: 20161107180744) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assignments", force: :cascade do |t|
    t.boolean  "zone_a",     default: false
    t.boolean  "zone_b",     default: false
    t.boolean  "zone_c",     default: false
    t.boolean  "zone_d",     default: false
    t.boolean  "zone_1",     default: false
    t.boolean  "zone_2",     default: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "assignments_attendees", id: false, force: :cascade do |t|
    t.integer "attendee_id",   null: false
    t.integer "assignment_id", null: false
    t.index ["assignment_id"], name: "index_assignments_attendees_on_assignment_id", using: :btree
    t.index ["attendee_id"], name: "index_assignments_attendees_on_attendee_id", using: :btree
  end

  create_table "attendees", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "DOB"
    t.string   "image"
    t.string   "organization"
    t.string   "title"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
