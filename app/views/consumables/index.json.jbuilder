json.array!(@consumables) do |consumable|
  json.extract! consumable, :id, :genus, :model, :Copier_id, :Printer_id
  json.url consumable_url(consumable, format: :json)
end
