json.array!(@copiers) do |copier|
  json.extract! copier, :id, :ninventary, :nserie, :brand, :model, :nfactura, :buy_date, :operational, :reazon, :notes, :Dependency_id
  json.url copier_url(copier, format: :json)
end
