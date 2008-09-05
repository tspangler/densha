# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of ActiveRecord to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 3) do

  create_table "boards", :force => true do |t|
    t.string   "shortcode"
    t.string   "name"
    t.text     "description"
    t.string   "alert"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", :force => true do |t|
    t.string   "username",          :default => "Anonymous"
    t.string   "tripcode"
    t.string   "email"
    t.text     "comment"
    t.integer  "attachment"
    t.integer  "parent_thread"
    t.string   "deletion_password"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "parent_board"
  end

end
