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

ActiveRecord::Schema.define(version: 2018_07_24_224934) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artifacts", force: :cascade do |t|
    t.bigint "room_id"
    t.boolean "hidden"
    t.boolean "obscures"
    t.string "name"
    t.string "purpose"
    t.string "unlock"
    t.string "description"
    t.boolean "portable"
    t.string "origin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["room_id"], name: "index_artifacts_on_room_id"
  end

  create_table "exits", force: :cascade do |t|
    t.string "nsew"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "rooms_id"
    t.index ["rooms_id"], name: "index_exits_on_rooms_id"
  end

  create_table "exits_rooms", id: false, force: :cascade do |t|
    t.bigint "exit_id"
    t.bigint "room_id"
    t.index ["exit_id"], name: "index_exits_rooms_on_exit_id"
    t.index ["room_id"], name: "index_exits_rooms_on_room_id"
  end

  create_table "rooms", force: :cascade do |t|
    t.integer "xcoord"
    t.integer "ycoord"
    t.string "title"
    t.string "description"
    t.string "items"
    t.string "image"
    t.bigint "exits_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["exits_id"], name: "index_rooms_on_exits_id"
  end

end
