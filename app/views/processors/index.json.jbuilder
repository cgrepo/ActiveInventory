json.array!(@processors) do |processor|
  json.extract! processor, :id, :brand, :genus, :modelp, :speed
  json.url processor_url(processor, format: :json)
end
