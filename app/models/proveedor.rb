class Proveedor < ApplicationRecord
  has_attached_file :pdf, url: "/pdf/:id//:filename"
  validates_attachment :pdf, :content_type => { :content_type => "application/pdf"}
end
