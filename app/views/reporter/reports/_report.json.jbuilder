json.extract! report, :id, :title, :description, :last_edition, :image, :created_at, :updated_at
json.url report_url(report, format: :json)
