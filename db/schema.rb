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

ActiveRecord::Schema.define(:version => 20120705002342) do

  create_table "comments", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.text     "description"
    t.integer  "post_id"
    t.boolean  "published"
    t.boolean  "moderated"
    t.datetime "published_at"
    t.integer  "status"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "comments", ["email"], :name => "index_comments_on_email"
  add_index "comments", ["moderated"], :name => "index_comments_on_moderated"
  add_index "comments", ["name"], :name => "index_comments_on_name"
  add_index "comments", ["post_id"], :name => "index_comments_on_post_id"
  add_index "comments", ["published"], :name => "index_comments_on_published"
  add_index "comments", ["published_at"], :name => "index_comments_on_published_at"
  add_index "comments", ["status"], :name => "index_comments_on_status"

  create_table "posts", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.boolean  "published"
  end

end
