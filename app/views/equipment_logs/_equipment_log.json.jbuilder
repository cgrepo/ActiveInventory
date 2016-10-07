json.extract! equipment_log, :id, :genus, :key, :inDate, :diagnosis, :solution, :outDate, :created_at, :updated_at
json.url equipment_log_url(equipment_log, format: :json)