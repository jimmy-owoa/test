class Suscription < ApplicationRecord
  validates_uniqueness_of :email
  validates_presence_of :name, :email, :city

end
