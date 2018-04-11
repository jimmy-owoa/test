json.extract! project, :id, :title, :country, :region, :sector_name, :investment, :production, :unit_production, :location, :description, :current_phase, :responsible, :contract_type, :latest_information, :contact_name, :contact_company, :contact_job, :contact_phone, :contact_address, :history, :created_at, :updated_at
json.url project_url(project, format: :json)
