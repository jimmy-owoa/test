class Category < ApplicationRecord
  has_many :projects_categories 
  enum kind: [:item, :types, :adjudications, :main_works, :main_services, :main_teams, :main_supplies, :items_involved,
              :client, :owner, :region, :country, :project_type]
end
