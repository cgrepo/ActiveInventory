json.array!(@powers) do |power|
  json.extract! power, :id, :ninventary, :nserie, :brand, :model, :nfactura, :buy_date, :no_break, :operational, :reazon, :notes, :Dependency_id
  json.url power_url(power, format: :json)
end
