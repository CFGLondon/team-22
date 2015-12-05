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

ActiveRecord::Schema.define(version: 20151205025733) do

  create_table "models", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "models", ["email"], name: "index_models_on_email", unique: true
  add_index "models", ["reset_password_token"], name: "index_models_on_reset_password_token", unique: true

  create_table "schedules", force: :cascade do |t|
    t.integer  "volunteer_id"
    t.integer  "constituent_id"
    t.time     "start"
    t.time     "end"
    t.integer  "volunteer_rating"
    t.integer  "constituent_rating"
    t.string   "constituent_comment"
    t.string   "volunteer_comment"
    t.integer  "volunteer_confirmation"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "users", force: :cascade do |t|
    t.integer  "type"
    t.string   "name"
    t.string   "email"
    t.string   "password"
    t.string   "phone"
    t.date     "avaliability_date"
    t.time     "availability_time"
    t.string   "referee_name"
    t.string   "refree_email"
    t.string   "referee_phone"
    t.string   "referee_description"
    t.string   "address"
    t.integer  "rating"
    t.string   "gender"
    t.string   "decription"
    t.integer  "verification"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "perference_one"
    t.string   "preference_two"
    t.string   "preference_three"
  end

end
