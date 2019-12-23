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

ActiveRecord::Schema.define(version: 2019_12_23_053326) do

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "contacts", force: :cascade do |t|
    t.string "title"
    t.integer "user_id"
    t.integer "walker_id"
    t.text "content"
    t.text "reply"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "messages", force: :cascade do |t|
    t.integer "room_id"
    t.text "content"
    t.integer "user_id"
    t.integer "walker_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "partners", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "dog_breed"
    t.string "image_id"
    t.string "name", null: false
    t.date "birthday"
    t.string "gender", null: false
    t.integer "weight"
    t.string "character"
    t.integer "delete_flag", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recruits", force: :cascade do |t|
    t.integer "user_id"
    t.integer "walker_id"
    t.integer "partner_id"
    t.date "offer_date", null: false
    t.time "start_time", null: false
    t.time "finish_time", null: false
    t.string "text"
    t.integer "status", default: 0, null: false
    t.integer "apply_num", default: 0
    t.integer "delete_flag", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "recruit_id", null: false
    t.string "title", null: false
    t.text "content", null: false
    t.float "satisfaction"
    t.integer "delete_flag", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rooms", force: :cascade do |t|
    t.integer "recruit_id"
    t.integer "walker_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "image_id"
    t.string "last_name"
    t.string "first_name"
    t.string "last_name_kana"
    t.string "first_name_kana"
    t.string "postcode"
    t.string "prefecture"
    t.string "city"
    t.string "block"
    t.string "building"
    t.string "phone_number"
    t.string "nickname"
    t.integer "delete_flag"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "walker_recruits", force: :cascade do |t|
    t.integer "walker_id"
    t.integer "recruit_id"
    t.integer "flag", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["recruit_id"], name: "index_walker_recruits_on_recruit_id"
    t.index ["walker_id"], name: "index_walker_recruits_on_walker_id"
  end

  create_table "walkers", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "image_id"
    t.string "last_name"
    t.string "first_name"
    t.string "last_name_kana"
    t.string "first_name_kana"
    t.string "postcode"
    t.string "prefecture"
    t.string "city"
    t.string "block"
    t.string "building"
    t.string "phone_number"
    t.string "nickname"
    t.string "area1"
    t.string "area2"
    t.string "area3"
    t.integer "delete_flag"
    t.text "introduction"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_walkers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_walkers_on_reset_password_token", unique: true
  end

end
