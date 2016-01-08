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

ActiveRecord::Schema.define(:version => 20130216212702) do

  create_table "bilgisayars", :force => true do |t|
    t.integer  "form_id"
    t.string   "kategori"
    t.string   "bilgi"
    t.string   "seviye"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "ckeditor_assets", :force => true do |t|
    t.string   "data_file_name",                                 :null => false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.integer  "assetable_id"
    t.string   "assetable_type",    :limit => 30
    t.string   "type",              :limit => 25
    t.string   "guid",              :limit => 10
    t.integer  "locale",            :limit => 1,  :default => 0
    t.integer  "user_id"
    t.datetime "created_at",                                     :null => false
    t.datetime "updated_at",                                     :null => false
  end

  add_index "ckeditor_assets", ["assetable_type", "assetable_id"], :name => "fk_assetable"
  add_index "ckeditor_assets", ["assetable_type", "type", "assetable_id"], :name => "idx_assetable_type"
  add_index "ckeditor_assets", ["user_id"], :name => "fk_user"

  create_table "dils", :force => true do |t|
    t.integer  "form_id"
    t.string   "dil_adi"
    t.string   "dil_seviye"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "firmas", :force => true do |t|
    t.integer  "form_id"
    t.string   "firma_adi"
    t.datetime "baslama"
    t.datetime "bitis"
    t.string   "sektor"
    t.string   "bolum"
    t.string   "pozisyon"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "forms", :force => true do |t|
    t.string   "ad"
    t.string   "soyad"
    t.string   "uyruk"
    t.string   "tc"
    t.string   "cinsiyet"
    t.string   "medeni"
    t.datetime "dogum"
    t.string   "ehliyet"
    t.string   "askerlik"
    t.string   "il"
    t.string   "ulke"
    t.string   "ilce"
    t.string   "sigara"
    t.string   "engel"
    t.string   "adres"
    t.string   "evtel"
    t.string   "ceptel"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.string   "egitim"
    t.string   "okul_adi"
    t.string   "lise_adi"
    t.string   "lise_bol"
    t.string   "lise_tur"
    t.integer  "lise_derece"
    t.datetime "lise_baslangic"
    t.datetime "lise_bitis"
    t.string   "seviye"
    t.string   "uni_adi"
    t.string   "fakulte"
    t.integer  "uni_derece"
    t.datetime "uni_baslangic"
    t.datetime "uni_bitis"
    t.string   "uni_dal"
    t.string   "dal_fak"
    t.string   "dal_bol"
    t.text     "onyazi"
    t.text     "ozgecmis"
    t.string   "image"
  end

  create_table "projes", :force => true do |t|
    t.integer  "form_id"
    t.string   "proje_adi"
    t.string   "site"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "referans", :force => true do |t|
    t.integer  "form_id"
    t.string   "ref_ad"
    t.string   "ref_poz"
    t.string   "mail"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "sertifikas", :force => true do |t|
    t.integer  "form_id"
    t.string   "kurs"
    t.string   "sertifika_adi"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "password_digest"
    t.string   "role"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
