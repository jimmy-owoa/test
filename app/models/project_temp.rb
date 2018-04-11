class ProjectTemp < ApplicationRecord
  searchkick

  def search_data
      {
        title: title,
        country: country,
        sector_name: sector_name,
        client: client,
        region: region,
        owner: owner,
        current_phase: current_phase,
        responsible: responsible
      }
  end
end
