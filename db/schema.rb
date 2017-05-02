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

ActiveRecord::Schema.define(version: 20170501224746) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bill_of_lading_houses", force: :cascade do |t|
    t.date     "date_of_arrival"
    t.string   "destination"
    t.integer  "travel_id"
    t.integer  "shipping_company_id"
    t.integer  "nvocc_id"
    t.integer  "consignee_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["consignee_id"], name: "index_bill_of_lading_houses_on_consignee_id", using: :btree
    t.index ["nvocc_id"], name: "index_bill_of_lading_houses_on_nvocc_id", using: :btree
    t.index ["shipping_company_id"], name: "index_bill_of_lading_houses_on_shipping_company_id", using: :btree
    t.index ["travel_id"], name: "index_bill_of_lading_houses_on_travel_id", using: :btree
  end

  create_table "bill_of_lading_masters", force: :cascade do |t|
    t.date     "date_of_arrival"
    t.string   "destination"
    t.integer  "travel_id"
    t.integer  "shipping_company_id"
    t.integer  "nvocc_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["nvocc_id"], name: "index_bill_of_lading_masters_on_nvocc_id", using: :btree
    t.index ["shipping_company_id"], name: "index_bill_of_lading_masters_on_shipping_company_id", using: :btree
    t.index ["travel_id"], name: "index_bill_of_lading_masters_on_travel_id", using: :btree
  end

  create_table "consignees", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "containers", force: :cascade do |t|
    t.string   "name"
    t.string   "container_type"
    t.integer  "merchandise_id"
    t.integer  "bill_of_lading_master_id"
    t.integer  "bill_of_lading_house_id"
    t.integer  "shipping_company_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.index ["bill_of_lading_house_id"], name: "index_containers_on_bill_of_lading_house_id", using: :btree
    t.index ["bill_of_lading_master_id"], name: "index_containers_on_bill_of_lading_master_id", using: :btree
    t.index ["merchandise_id"], name: "index_containers_on_merchandise_id", using: :btree
    t.index ["shipping_company_id"], name: "index_containers_on_shipping_company_id", using: :btree
  end

  create_table "fees", force: :cascade do |t|
    t.integer  "price"
    t.integer  "origin_id"
    t.integer  "nvocc_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["nvocc_id"], name: "index_fees_on_nvocc_id", using: :btree
    t.index ["origin_id"], name: "index_fees_on_origin_id", using: :btree
  end

  create_table "merchandises", force: :cascade do |t|
    t.string   "name"
    t.integer  "price"
    t.string   "details"
    t.integer  "origin_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["origin_id"], name: "index_merchandises_on_origin_id", using: :btree
  end

  create_table "nvoccs", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "origins", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shipping_companies", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ships", force: :cascade do |t|
    t.string   "name"
    t.integer  "shipping_company_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["shipping_company_id"], name: "index_ships_on_shipping_company_id", using: :btree
  end

  create_table "travels", force: :cascade do |t|
    t.integer  "origin_id"
    t.integer  "ship_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["origin_id"], name: "index_travels_on_origin_id", using: :btree
    t.index ["ship_id"], name: "index_travels_on_ship_id", using: :btree
  end

  add_foreign_key "bill_of_lading_houses", "consignees"
  add_foreign_key "bill_of_lading_houses", "nvoccs"
  add_foreign_key "bill_of_lading_houses", "shipping_companies"
  add_foreign_key "bill_of_lading_houses", "travels"
  add_foreign_key "bill_of_lading_masters", "nvoccs"
  add_foreign_key "bill_of_lading_masters", "shipping_companies"
  add_foreign_key "bill_of_lading_masters", "travels"
  add_foreign_key "containers", "bill_of_lading_houses"
  add_foreign_key "containers", "bill_of_lading_masters"
  add_foreign_key "containers", "merchandises"
  add_foreign_key "containers", "shipping_companies"
  add_foreign_key "fees", "nvoccs"
  add_foreign_key "fees", "origins"
  add_foreign_key "merchandises", "origins"
  add_foreign_key "ships", "shipping_companies"
  add_foreign_key "travels", "origins"
  add_foreign_key "travels", "ships"
end
