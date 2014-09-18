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

ActiveRecord::Schema.define(version: 20140917225336) do

  create_table "aprendizs", force: true do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "doc"
    t.integer  "centro_id"
    t.integer  "ficha_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "aprendizs", ["centro_id"], name: "index_aprendizs_on_centro_id"
  add_index "aprendizs", ["ficha_id"], name: "index_aprendizs_on_ficha_id"

  create_table "cargos", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "centros", force: true do |t|
    t.string   "nombre"
    t.integer  "programa_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "centros", ["programa_id"], name: "index_centros_on_programa_id"

  create_table "fichas", force: true do |t|
    t.string   "programa"
    t.string   "ficha"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "otros", force: true do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "doc"
    t.integer  "cargo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "otros", ["cargo_id"], name: "index_otros_on_cargo_id"

end