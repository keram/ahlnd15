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

ActiveRecord::Schema.define(version: 20150620210106) do

  create_table "model_sensor_event_actions", force: :cascade do |t|
    t.integer  "model_id"
    t.integer  "model_sensor_id"
    t.integer  "sensor_event_id"
    t.integer  "sensor_event_action_id"
    t.text     "action_detail"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "model_sensor_event_actions", ["model_id"], name: "index_model_sensor_event_actions_on_model_id"
  add_index "model_sensor_event_actions", ["model_sensor_id"], name: "index_model_sensor_event_actions_on_model_sensor_id"
  add_index "model_sensor_event_actions", ["sensor_event_action_id"], name: "index_model_sensor_event_actions_on_sensor_event_action_id"
  add_index "model_sensor_event_actions", ["sensor_event_id"], name: "index_model_sensor_event_actions_on_sensor_event_id"

  create_table "model_sensors", force: :cascade do |t|
    t.integer  "model_id"
    t.integer  "sensor_id"
    t.decimal  "latitude"
    t.decimal  "longitude"
    t.decimal  "sec"
    t.string   "sensor_state"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "model_sensors", ["model_id"], name: "index_model_sensors_on_model_id"
  add_index "model_sensors", ["sensor_id"], name: "index_model_sensors_on_sensor_id"

  create_table "models", force: :cascade do |t|
    t.string   "name",       null: false
    t.string   "file",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sensor_event_actions", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.text     "details"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "sensor_events", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "sensors", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
