class CreateProjectTemps < ActiveRecord::Migration[5.1]
  def change
    create_table :project_temps do |t|
      t.string :title
      t.text :detail_title
      t.string :country
      t.string :region
      t.string :sector_name
      t.text :types
      t.string :investment
      t.string :production
      t.string :client
      t.string :owner
      t.string :location
      t.text :description
      t.string :current_phase
      t.string :responsible
      t.string :contract_type
      t.text :latest_information
      t.string :contact_name
      t.string :contact_company
      t.string :contact_job
      t.string :contact_phone
      t.string :contact_address
      t.text :full_contact
      t.text :adjudications
      t.text :history
      t.text :main_works
      t.text :main_teams
      t.text :main_supplies
      t.text :main_services

      t.timestamps
    end
  end
end
