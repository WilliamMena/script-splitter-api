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

ActiveRecord::Schema.define(version: 20190103031505) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "captions", force: :cascade do |t|
    t.text "text"
    t.boolean "completed"
    t.time "timecode"
    t.bigint "script_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "in_point"
    t.string "out_point"
    t.index ["script_id"], name: "index_captions_on_script_id"
  end

  create_table "scripts", force: :cascade do |t|
    t.bigint "user_id"
    t.string "title"
    t.text "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "characters"
    t.index ["user_id"], name: "index_scripts_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "captions", "scripts"
  add_foreign_key "scripts", "users"
end
