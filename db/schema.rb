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

ActiveRecord::Schema.define(version: 20150530191236) do

  create_table "audios", force: true do |t|
    t.text     "comment"
    t.integer  "uid"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "audioFile_file_name"
    t.string   "audioFile_content_type"
    t.integer  "audioFile_file_size"
    t.datetime "audioFile_updated_at"
  end

  create_table "comments", force: true do |t|
    t.integer  "post_id"
    t.integer  "user_id"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "commenttype"
  end

  create_table "friendships", force: true do |t|
    t.integer  "friender_id"
    t.integer  "friended_id"
    t.integer  "accepted"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "likes", force: true do |t|
    t.integer  "post_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "liketype"
  end

  create_table "musics", force: true do |t|
    t.text     "comment"
    t.string   "link"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "uid"
    t.integer  "sharetype"
  end

  create_table "taggings", force: true do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "context",       limit: 128
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id", "taggable_id", "taggable_type", "context", "tagger_id", "tagger_type"], name: "taggings_idx", unique: true
  add_index "taggings", ["taggable_id", "taggable_type", "context"], name: "index_taggings_on_taggable_id_and_taggable_type_and_context"

  create_table "tags", force: true do |t|
    t.string  "name"
    t.integer "taggings_count", default: 0
  end

  add_index "tags", ["name"], name: "index_tags_on_name", unique: true

  create_table "unlikes", force: true do |t|
    t.integer  "post_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "unreadcomments", force: true do |t|
    t.integer  "comment_id"
    t.integer  "post_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "commenter"
    t.integer  "commenttype"
  end

  create_table "unreadlikes", force: true do |t|
    t.integer  "post_id"
    t.integer  "user_id"
    t.integer  "liker"
    t.integer  "liketype"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "gender"
    t.string   "age"
    t.string   "interest"
    t.string   "picurl"
    t.integer  "friended_id"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

end
