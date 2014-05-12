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

ActiveRecord::Schema.define(version: 20140511233934) do

  create_table "colored_pieces", force: true do |t|
    t.integer  "code"
    t.integer  "piece_id"
    t.integer  "color_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "colors", force: true do |t|
    t.integer  "code"
    t.string   "name"
    t.string   "rgb"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "inventories", force: true do |t|
    t.string   "name"
    t.integer  "piece_count"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "inventory_pieces", force: true do |t|
    t.integer  "inventory_id"
    t.integer  "colored_piece_id"
    t.integer  "quantity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "piece_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pieces", force: true do |t|
    t.integer  "code"
    t.string   "name"
    t.integer  "type_id"
    t.integer  "width"
    t.integer  "length"
    t.integer  "height"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
