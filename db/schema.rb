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

ActiveRecord::Schema.define(version: 20160406213613) do

  create_table "ips", force: true do |t|
    t.string "ip"
  end

  create_table "options", force: true do |t|
    t.string   "title"
    t.integer  "question_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "correct"
  end

  create_table "questions", force: true do |t|
    t.string   "title"
    t.string   "secret"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "q_type",     limit: 1, default: 1
  end

  create_table "settings", force: true do |t|
    t.string   "var",                   null: false
    t.text     "value"
    t.integer  "thing_id"
    t.string   "thing_type", limit: 30
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "settings", ["thing_type", "thing_id", "var"], name: "index_settings_on_thing_type_and_thing_id_and_var", unique: true, using: :btree

  create_table "votes", force: true do |t|
    t.string   "secret"
    t.integer  "question_id"
    t.integer  "option_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
