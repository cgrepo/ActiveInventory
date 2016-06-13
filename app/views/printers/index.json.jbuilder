json.array!(@printers) do |printer|
  json.extract! printer, :id, :ninventary, :nserie, :brand, :model, :nfactura, :buy_date, :genus, :operational, :reazon, :notes, :Dependency_id
  json.url printer_url(printer, format: :json)
end
