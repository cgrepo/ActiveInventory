json.array!(@screens) do |screen|
  json.extract! screen, :id, :ninventary, :nserie, :brand, :model, :nfactura, :buy_date, :inch, :operational, :reazon, :notes, :Dependency_id, :Computer_id
  json.url screen_url(screen, format: :json)
end
