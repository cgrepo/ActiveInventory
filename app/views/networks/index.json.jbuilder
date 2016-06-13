json.array!(@networks) do |network|
  json.extract! network, :id, :linktype, :genus, :location, :iprange, :ip
  json.url network_url(network, format: :json)
end
