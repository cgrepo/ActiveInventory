json.array!(@telephones) do |telephone|
  json.extract! telephone, :id, :ninventary, :nserie, :brand, :model, :buy_date, :genus, :number, :operational, :reazon, :notes, :Dependency_id
  json.url telephone_url(telephone, format: :json)
end
