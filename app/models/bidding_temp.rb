class BiddingTemp < ApplicationRecord
  searchkick

  def search_data
      {
        title: title,
        country: country,
        sector: sector,
        bidding_company: bidding_company
      }
  end
end
