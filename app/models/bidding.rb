class Bidding < ApplicationRecord
  has_and_belongs_to_many :items_involved
  has_one :business
  has_one :country
  has_one :sector
end
