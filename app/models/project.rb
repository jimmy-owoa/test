class Project < ApplicationRecord
  has_and_belongs_to_many :items
  has_and_belongs_to_many :types
  has_and_belongs_to_many :project_types
  has_and_belongs_to_many :countries
  has_and_belongs_to_many :regions
  has_one :sector
  searchkick

  def search_data
      {
        title: title,
        country: country,
        client: client,
        sector_id: sector_id,
        region: region,
        owner: owner,
        current_phase: current_phase,
        responsible: responsible
      }
  end
end
