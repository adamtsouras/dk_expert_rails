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

ActiveRecord::Schema.define(version: 20161109172809) do

  create_table "articles", force: :cascade do |t|
    t.text     "program"
    t.text     "title"
    t.text     "category"
    t.text     "short_description"
    t.text     "long_description"
    t.text     "title_image"
    t.text     "list_image"
    t.text     "video"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "drills", force: :cascade do |t|
    t.string   "drill_name"
    t.string   "drill_title"
    t.string   "drill_category"
    t.text     "drill_shortdesc"
    t.text     "drill_longdesc"
    t.string   "drill_titleimage"
    t.string   "drill_listimage"
    t.string   "drill_keyfeatures"
    t.integer  "article_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["article_id"], name: "index_drills_on_article_id"
  end

end
