class Request < ApplicationRecord
  validates_uniqueness_of :email
  validates_presence_of :contact_person, :email, :phone, :business
end
