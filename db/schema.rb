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

ActiveRecord::Schema.define(:version => 20110115175414) do

  create_table "customers", :force => true do |t|
    t.string   "company_name"
    t.string   "address"
    t.string   "zip_code"
    t.string   "city"
    t.string   "district"
    t.string   "phone_number"
    t.string   "fax_number"
    t.string   "email_address"
    t.string   "website"
    t.integer  "region_id"
    t.integer  "nation_id"
    t.integer  "sales_person_id"
    t.integer  "payment_id"
    t.integer  "vat_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "nations", :force => true do |t|
    t.string   "name"
    t.string   "iso_code"
    t.boolean  "cee"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "nielsen_areas", :force => true do |t|
    t.string   "area_code"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "payments", :force => true do |t|
    t.string   "name"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "regions", :force => true do |t|
    t.string   "name"
    t.integer  "nielsen_area_id"
    t.decimal  "delivery_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sales_people", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "zip"
    t.string   "city"
    t.string   "didtrict"
    t.string   "phone_number"
    t.string   "fax_number"
    t.string   "email_address"
    t.string   "skype"
    t.integer  "region_id"
    t.integer  "nation_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vats", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.decimal  "percentage"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
