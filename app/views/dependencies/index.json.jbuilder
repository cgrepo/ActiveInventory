json.array!(@dependencies) do |dependency|
  json.extract! dependency, :id, :name, :address, :telephone, :responsable, :responsable_email, :Delegation_id
  json.url dependency_url(dependency, format: :json)
end
