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

ActiveRecord::Schema.define(:version => 20131127205806) do

  create_table "admins", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "cidades", :force => true do |t|
    t.string   "descricao"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "companies", :force => true do |t|
    t.string   "nome"
    t.string   "email"
    t.string   "telefone"
    t.string   "celular"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "facebook"
    t.string   "twitter"
    t.string   "skype"
    t.string   "morada"
    t.float    "latitude"
    t.float    "longitude"
    t.float    "raio"
  end

  create_table "documentos", :force => true do |t|
    t.string   "descricao"
    t.integer  "imovel_id"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "estados", :force => true do |t|
    t.string   "descricao"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "estatutos", :force => true do |t|
    t.string   "descricao"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "fotosresposta", :force => true do |t|
    t.string   "descricao"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "imovels", :force => true do |t|
    t.text     "descriacao"
    t.string   "text"
    t.string   "resumo"
    t.text     "referencia",  :limit => 255
    t.string   "string"
    t.string   "tipoNegocio"
    t.string   "tipoImovel"
    t.string   "estado"
    t.string   "area"
    t.float    "preco"
    t.string   "pais"
    t.string   "provincia"
    t.string   "cidade"
    t.string   "localizacao"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
    t.string   "moeda"
    t.string   "tipologia"
    t.float    "latitude"
    t.float    "longitude"
    t.float    "raio"
    t.string   "estatuto"
    t.text     "observacao"
    t.integer  "user_id"
    t.string   "zona"
  end

  create_table "locations", :force => true do |t|
    t.string   "descricao"
    t.integer  "cidade_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "moedas", :force => true do |t|
    t.string   "sigla"
    t.string   "descricao"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tipo_imovels", :force => true do |t|
    t.string   "descricao"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tipo_negocios", :force => true do |t|
    t.string   "descricao"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tipologia", :force => true do |t|
    t.text     "descricao"
    t.integer  "tipoImovel_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "username"
    t.string   "crypted_password"
    t.string   "password_salt"
    t.string   "persistence_token"
  end

end
