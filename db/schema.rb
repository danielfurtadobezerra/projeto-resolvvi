# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_01_24_030542) do

  create_table "problema_negativados", force: :cascade do |t|
    t.string "divida"
    t.string "categoria"
    t.string "usuario"
    t.string "endereco"
    t.string "provas"
    t.string "advogado"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "problema_voos", force: :cascade do |t|
    t.string "situacao"
    t.string "detalhe"
    t.string "usuario"
    t.string "endereço"
    t.string "provas"
    t.string "advogado"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
