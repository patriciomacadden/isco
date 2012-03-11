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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120310181731) do

  create_table "isco_first_level_groups", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "isco_fourth_level_groups", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.integer  "isco_third_level_group_id"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  add_index "isco_fourth_level_groups", ["isco_third_level_group_id"], :name => "index_isco_fourth_level_groups_on_isco_third_level_group_id"

  create_table "isco_second_level_groups", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.integer  "isco_first_level_group_id"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  add_index "isco_second_level_groups", ["isco_first_level_group_id"], :name => "index_isco_second_level_groups_on_isco_first_level_group_id"

  create_table "isco_third_level_groups", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.integer  "isco_second_level_group_id"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  add_index "isco_third_level_groups", ["isco_second_level_group_id"], :name => "index_isco_third_level_groups_on_isco_second_level_group_id"

end
