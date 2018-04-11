class Business < ApplicationRecord
  has_and_belongs_to_many :biddings
end
