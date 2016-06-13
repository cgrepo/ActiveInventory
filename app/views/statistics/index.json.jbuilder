json.array!(@statistics) do |statistic|
  json.extract! statistic, :id, :month, :sheets, :consumable, :Copier_id, :Printer_id
  json.url statistic_url(statistic, format: :json)
end
