json.extract! company, :id, :name, :manager, :phone, :email, :address, :created_at, :updated_at
json.url company_url(company, format: :json)
