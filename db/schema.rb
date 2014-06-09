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

ActiveRecord::Schema.define(version: 20140609072619) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "discs", force: true do |t|
    t.integer  "version_id"
    t.string   "fingerprint"
    t.string   "sha256_hash"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "discs", ["version_id"], name: "index_discs_on_version_id", using: :btree

  create_table "games", force: true do |t|
    t.string   "name"
    t.string   "company"
    t.string   "fingerprint"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "releases", force: true do |t|
    t.integer  "game_id"
    t.string   "name"
    t.boolean  "area_e"
    t.boolean  "area_j"
    t.boolean  "area_u"
    t.string   "peripherals"
    t.date     "release_date"
    t.string   "fingerprint"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "releases", ["game_id"], name: "index_releases_on_game_id", using: :btree

  create_table "users", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "versions", force: true do |t|
    t.integer  "release_id"
    t.string   "name"
    t.string   "version_type"
    t.string   "fingerprint"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "versions", ["release_id"], name: "index_versions_on_release_id", using: :btree

end
