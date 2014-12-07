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

ActiveRecord::Schema.define(version: 20141207183842) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "projects", force: true do |t|
    t.string   "code"
    t.string   "title"
    t.string   "series"
    t.string   "isbn"
    t.string   "copyright"
    t.string   "number"
    t.string   "author"
    t.string   "level"
    t.string   "imprint"
    t.string   "edition"
    t.string   "acronym"
    t.integer  "product_type"
    t.integer  "imprint_id"
    t.decimal  "budget",          precision: 8, scale: 2
    t.integer  "image_assets"
    t.integer  "media_assets"
    t.integer  "text_assets"
    t.date     "start"
    t.date     "revised_start"
    t.date     "close"
    t.date     "revised_close"
    t.date     "printer"
    t.date     "revised_printer"
    t.string   "color"
    t.string   "print_run"
    t.string   "trim_size"
    t.decimal  "price",           precision: 8, scale: 2
    t.text     "free_text"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "projects", ["imprint_id"], name: "index_projects_on_imprint_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
