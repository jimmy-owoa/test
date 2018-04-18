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

ActiveRecord::Schema.define(version: 20180418170020) do

  create_table "admins", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "bidding_temps", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "title"
    t.string "country"
    t.string "sector"
    t.text "items_involved"
    t.text "location"
    t.string "bidding_company"
    t.text "description"
    t.text "requirements"
    t.text "bases"
    t.text "contact"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "biddings", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "publication_title"
    t.string "country"
    t.string "sector"
    t.string "location"
    t.bigint "business_id"
    t.text "description"
    t.string "contact_name"
    t.string "contact_job"
    t.string "contact_email"
    t.string "contact_phone"
    t.string "contact_address"
    t.text "other"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title"
    t.bigint "sector_id"
    t.index ["business_id"], name: "index_biddings_on_business_id"
    t.index ["sector_id"], name: "index_biddings_on_sector_id"
  end

  create_table "businesses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.integer "kind"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "project_id"
    t.index ["project_id"], name: "index_categories_on_project_id"
  end

  create_table "categories_projects", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "project_id"
    t.bigint "category_id"
    t.bigint "project_type_id"
    t.bigint "client_id"
    t.bigint "clients_id"
    t.bigint "adjudication_id"
    t.bigint "main_work_id"
    t.index ["adjudication_id"], name: "index_categories_projects_on_adjudication_id"
    t.index ["category_id"], name: "index_categories_projects_on_category_id"
    t.index ["client_id"], name: "index_categories_projects_on_client_id"
    t.index ["clients_id"], name: "index_categories_projects_on_clients_id"
    t.index ["main_work_id"], name: "index_categories_projects_on_main_work_id"
    t.index ["project_id"], name: "index_categories_projects_on_project_id"
    t.index ["project_type_id"], name: "index_categories_projects_on_project_type_id"
  end

  create_table "newsletters", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "project_temps", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "title"
    t.text "detail_title"
    t.string "country"
    t.string "region"
    t.string "sector_name"
    t.text "types"
    t.string "investment"
    t.string "production"
    t.string "client"
    t.string "owner"
    t.text "location"
    t.text "description"
    t.string "current_phase"
    t.string "responsible"
    t.string "contract_type"
    t.text "latest_information"
    t.string "contact_name"
    t.string "contact_company"
    t.string "contact_job"
    t.string "contact_phone"
    t.string "contact_address"
    t.text "full_contact"
    t.text "adjudications"
    t.text "history"
    t.text "main_works"
    t.text "main_teams"
    t.text "main_supplies"
    t.text "main_services"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "title"
    t.string "country"
    t.string "region"
    t.string "sector"
    t.integer "investment"
    t.string "production"
    t.string "unit_production"
    t.text "location"
    t.text "description"
    t.string "current_phase"
    t.string "responsible"
    t.string "contract_type"
    t.text "latest_information"
    t.string "contact_name"
    t.string "contact_company"
    t.string "contact_job"
    t.string "contact_phone"
    t.string "contact_address"
    t.text "history"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "sector_id"
    t.text "adjudications"
    t.string "client"
    t.string "owner"
    t.text "main_works"
    t.text "detail_title"
    t.string "city"
    t.text "main_teams"
    t.text "main_supplies"
    t.text "main_services"
    t.index ["sector_id"], name: "index_projects_on_sector_id"
  end

  create_table "projects_categories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "project_id"
    t.bigint "category_id"
    t.index ["category_id"], name: "index_projects_categories_on_category_id"
    t.index ["project_id"], name: "index_projects_categories_on_project_id"
  end

  create_table "proveedors", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "rut"
    t.string "razon_social"
    t.string "estado_general"
    t.text "observaciones"
    t.text "observaciones_agenda"
    t.string "situacion_competencias_basicas"
    t.string "competencias_basicas_categoria"
    t.float "competencias_basicas_porcentaje", limit: 24
    t.date "competencias_basicas_fecha_vigencia"
    t.float "competencias_basicas_infraestructura", limit: 24
    t.float "comptencias_basicas_recursos_humanos", limit: 24
    t.float "competencias_basicas_calidad", limit: 24
    t.float "competencias_basicas_medio_ambiente", limit: 24
    t.float "competencias_basicas_seguridad", limit: 24
    t.float "competencias_basicas_conectividad_y_automatizacion", limit: 24
    t.float "competencias_basicas_comunidad", limit: 24
    t.integer "financiero_anio"
    t.integer "financiero_tamano"
    t.float "financiero_patrimonio", limit: 24
    t.float "financiero_capital_de_trabajo", limit: 24
    t.float "financiero_total_activos", limit: 24
    t.float "financiero_deuda", limit: 24
    t.float "financiero_capital_de_trabajo_relativo", limit: 24
    t.float "financiero_liquidez", limit: 24
    t.float "financiero_razon_de_endeudamiento", limit: 24
    t.float "financiero_leverage", limit: 24
    t.float "financiero_rentabilidad_activos", limit: 24
    t.float "financiero_rentabilidad_patrimonio", limit: 24
    t.float "financiero_rentabilidad_ventas", limit: 24
    t.float "financiero_indice_de_quiebra", limit: 24
    t.float "financiero_ingreso_de_explotacion", limit: 24
    t.float "financiero_razon_acida", limit: 24
    t.integer "antecedente_comercial_cantidad_documentos_boletin"
    t.float "antecedente_comercial_monto_total_boletin", limit: 24
    t.integer "antecedente_comercial_cantidad_documentos_morosidad"
    t.integer "antecedente_comercial_monto_total_morosidad"
    t.integer "antecedente_comercial_cantidad_documentos_protestos"
    t.bigint "antecedente_comercial_monto_total_protesto"
    t.date "tributario_fecha_de_actualizacion"
    t.string "tributario_facturacion_electronica"
    t.string "tributario_observacion_alerta"
    t.string "tributario_observacion_irregularidad"
    t.date "mutualidad_fecha"
    t.float "mutualidad_indice_gravedad", limit: 24
    t.float "mutualidad_indice_de_frecuencia", limit: 24
    t.string "contacto_nombre"
    t.string "contacto_telefono"
    t.string "contacto_email"
    t.string "instalaciones_ciudad_casa_matriz"
    t.text "instalaciones_direccion_casa_matriz"
    t.string "tipo_de_certificacion_iso"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "numero_registro"
    t.string "alerta_actualizacion"
    t.decimal "nivel_deuda", precision: 10
    t.string "infraccion_boletin_laboral"
    t.string "tiene_documentos_morosos"
    t.string "tiene_documentos_protestados"
    t.string "alerta_sii"
    t.string "alerta_desactualizacion_mutual"
    t.string "es_extranjero"
    t.integer "penalizacion_liquidez"
    t.integer "penalizacion_test_acido"
    t.integer "penalizacion_endeudamiento"
    t.integer "penalizacion_nivel_deuda"
    t.integer "pena_morosidad"
    t.integer "pena_protestos"
    t.integer "pena_alerta_sii"
    t.integer "pena_iso_9000"
    t.integer "pena_iso_18000"
    t.integer "pena_boletin_laboral"
    t.integer "pena_indice_frecuencia"
    t.integer "scoring"
    t.string "status_scoring"
    t.string "iso_9000"
    t.string "iso_14000"
    t.string "iso_18000"
    t.integer "meses_desactualizacion_mutual"
    t.integer "pena_indice_gravedad"
  end

  create_table "reporters", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_reporters_on_email", unique: true
    t.index ["reset_password_token"], name: "index_reporters_on_reset_password_token", unique: true
  end

  create_table "reports", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "title"
    t.text "description"
    t.date "last_edition"
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "requests", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "business"
    t.string "city"
    t.string "address"
    t.string "contact_person"
    t.string "phone"
    t.string "email"
    t.text "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sectors", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "suscriptions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "email"
    t.string "city"
    t.string "business"
    t.string "job"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "business"
    t.string "region"
    t.text "address"
    t.string "phone"
    t.string "name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "biddings", "businesses"
  add_foreign_key "biddings", "sectors"
  add_foreign_key "categories", "projects"
  add_foreign_key "categories_projects", "categories"
  add_foreign_key "categories_projects", "projects"
  add_foreign_key "projects", "sectors"
  add_foreign_key "projects_categories", "categories"
  add_foreign_key "projects_categories", "projects"
end
