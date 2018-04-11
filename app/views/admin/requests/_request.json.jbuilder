json.extract! request, :id, :business, :city, :address, :contact_person, :phone, :email, :comment, :created_at, :updated_at
json.url request_url(request, format: :json)
