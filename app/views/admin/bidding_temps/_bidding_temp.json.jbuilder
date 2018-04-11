json.extract! bidding_temp, :id, :title, :country, :sector, :items_involved, :location, :bidding_company, :description, :requirements, :bases, :contact, :created_at, :updated_at
json.url bidding_temp_url(bidding_temp, format: :json)
