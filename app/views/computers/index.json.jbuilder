json.array!(@computers) do |computer|
  json.extract! computer, :id, :ninventary, :nserie, :brand, :model, :nfactura, :buy_date, :genus, :processor, :hd, :memory, :bluetooth, :os, :voffice, :users, :name, :workgroup, :wifi, :maclan, :iplan, :masklan, :macwifi, :ipwifi, :maskwifi, :operational, :reazon, :Network_id, :Dependency_id, :Worker_id
  json.url computer_url(computer, format: :json)
end
