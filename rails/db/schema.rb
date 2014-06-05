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

ActiveRecord::Schema.define(version: 20140605201840) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "mealcategories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "nutritioncalcs", force: true do |t|
    t.string   "carbgrams"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "recipes", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "directions"
    t.integer  "servings"
    t.integer  "cooking_time"
    t.integer  "total_calories"
    t.string   "category"
    t.integer  "mealcategory_id"
  end

  add_index "recipes", ["mealcategory_id"], name: "index_recipes_on_mealcategory_id", using: :btree

end
