json.extract! provider, :id, :name, :address, :telephone, :rfc, :email, :created_at, :updated_at
json.url provider_url(provider, format: :json)