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

ActiveRecord::Schema.define(version: 20160531185503) do

  create_table "delegations", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dependencies", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "telephone"
    t.string   "responsable"
    t.string   "responsable_email"
    t.integer  "Delegation_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "dependencies", ["Delegation_id"], name: "index_dependencies_on_Delegation_id"

  create_table "powers", force: :cascade do |t|
    t.string   "ninventary"
    t.string   "nserie"
    t.string   "brand"
    t.string   "model"
    t.string   "nfactura"
    t.date     "buy_date"
    t.boolean  "no_break",      default: false
    t.boolean  "operational",   default: true
    t.string   "reazon"
    t.text     "notes"
    t.integer  "Dependency_id"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "powers", ["Dependency_id"], name: "index_powers_on_Dependency_id"

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
