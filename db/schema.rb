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

ActiveRecord::Schema.define(version: 2020_04_06_071054) do

  create_table "books", force: :cascade do |t|
    t.string "isbn"
    t.string "title"
    t.string "subtitle"
    t.string "publishing_status"
    t.string "language"
    t.string "publisher_name"
    t.string "author"
    t.string "number_of_pages"
    t.string "publication_date"
    t.string "product_form"
    t.string "price"
    t.text "description", limit: 1073741823
    t.string "height"
    t.string "length"
    t.string "width"
    t.string "weight"
    t.string "bisac_code"
    t.string "bisac_code2"
    t.string "bisac_code3"
    t.string "media_file"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
