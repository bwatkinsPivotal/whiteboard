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

ActiveRecord::Schema.define(version: 20160927022701) do

  create_table "identities", force: true do |t|
    t.string  "email",           null: false
    t.string  "password_digest"
    t.integer "user_id",         null: false
  end

  add_index "identities", ["email"], name: "index_identities_on_email", unique: true, using: :btree
  add_index "identities", ["user_id"], name: "index_identities_on_user_id", using: :btree

  create_table "items", force: true do |t|
    t.text     "title"
    t.text     "description"
    t.string   "kind"
    t.integer  "post_id"
    t.boolean  "public",      default: false
    t.boolean  "bumped",      default: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "standup_id"
    t.date     "date"
    t.string   "author"
  end

  create_table "posts", force: true do |t|
    t.text     "title"
    t.boolean  "sent"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "sent_at"
    t.string   "from",         default: "Standup Blogger"
    t.datetime "blogged_at"
    t.boolean  "archived",     default: false
    t.integer  "standup_id"
    t.string   "blog_post_id"
  end

  create_table "standups", force: true do |t|
    t.string   "title"
    t.string   "subject_prefix"
    t.string   "to_address"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "closing_message"
    t.string   "time_zone_name",    default: "Eastern Time (US & Canada)", null: false
    t.string   "start_time_string", default: "9:06am"
    t.text     "image_urls"
    t.string   "image_days"
  end

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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
