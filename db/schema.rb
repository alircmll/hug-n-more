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

ActiveRecord::Schema.define(version: 2019_11_18_133843) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.string "check_in"
    t.string "check_out"
    t.integer "progress"
    t.bigint "user_id"
    t.bigint "hug_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hug_id"], name: "index_bookings_on_hug_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "hugs", force: :cascade do |t|
    t.text "description"
    t.integer "price"
    t.string "title"
    t.integer "category"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_hugs_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password"
    t.boolean "hugger", default: false
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "bookings", "hugs"
  add_foreign_key "bookings", "users"
  add_foreign_key "hugs", "users"
end
