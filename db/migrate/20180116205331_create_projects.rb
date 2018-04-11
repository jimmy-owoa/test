class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :country
      t.string :region
      t.string :sector_name
      t.integer :investment
      t.integer :production
      t.string :unit_production
      t.string :location
      t.text :description
      t.integer :current_phase
      t.integer :responsible
      t.integer :contract_type
      t.text :latest_information
      t.string :contact_name
      t.string :contact_company
      t.string :contact_job
      t.string :contact_phone
      t.string :contact_address
      t.text :history

      t.timestamps
    end
  end
end
