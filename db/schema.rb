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

ActiveRecord::Schema.define(version: 20180221020027) do

  create_table "adresses", force: :cascade do |t|
    t.string "numerocivique"
    t.string "rue"
    t.string "codepostal"
    t.string "ville"
    t.string "province"
    t.integer "client_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_adresses_on_client_id"
  end

  create_table "client_etat_civils", force: :cascade do |t|
    t.integer "client_id"
    t.integer "etat_civil_id"
    t.datetime "datedebut"
    t.datetime "datefin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_client_etat_civils_on_client_id"
    t.index ["etat_civil_id"], name: "index_client_etat_civils_on_etat_civil_id"
  end

  create_table "client_has_conjoints", force: :cascade do |t|
    t.integer "client_id"
    t.datetime "datedebut"
    t.datetime "datefin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "conjoint_id"
    t.index ["client_id"], name: "index_client_has_conjoints_on_client_id"
  end

  create_table "client_has_employeurs", force: :cascade do |t|
    t.integer "client_id"
    t.integer "employeur_id"
    t.datetime "datedebut"
    t.datetime "datefin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_client_has_employeurs_on_client_id"
    t.index ["employeur_id"], name: "index_client_has_employeurs_on_employeur_id"
  end

  create_table "client_has_enfants", force: :cascade do |t|
    t.integer "enfant_id"
    t.integer "client_id"
    t.boolean "lien"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_client_has_enfants_on_client_id"
    t.index ["enfant_id"], name: "index_client_has_enfants_on_enfant_id"
  end

  create_table "clients", force: :cascade do |t|
    t.string "prenom"
    t.string "nom"
    t.datetime "datenaissance"
    t.string "nas"
    t.integer "nombreenfants"
    t.integer "comptetaxesproprietaire"
    t.integer "adresse_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "conjoint_id"
    t.index ["adresse_id"], name: "index_clients_on_adresse_id"
  end

  create_table "employeurs", force: :cascade do |t|
    t.string "nom"
    t.integer "adresse_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["adresse_id"], name: "index_employeurs_on_adresse_id"
  end

  create_table "enfants", force: :cascade do |t|
    t.string "nom"
    t.string "prenom"
    t.datetime "datenaissance"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "etat_civils", force: :cascade do |t|
    t.string "typee"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "institutions", force: :cascade do |t|
    t.string "nom"
    t.integer "adresse_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["adresse_id"], name: "index_institutions_on_adresse_id"
  end

  create_table "studies", force: :cascade do |t|
    t.string "secteuretudes"
    t.string "niveau"
    t.datetime "datedebut"
    t.datetime "datecompletion"
    t.integer "client_id"
    t.integer "institution_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_studies_on_client_id"
    t.index ["institution_id"], name: "index_studies_on_institution_id"
  end

  create_table "versions", force: :cascade do |t|
    t.string "itemtype"
    t.integer "itemid"
    t.string "event"
    t.string "description"
    t.text "object"
    t.datetime "createdat"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
