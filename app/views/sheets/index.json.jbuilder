
json.array!(@sheets) do |sheet|
  json.extract! sheet, :id, :date, :client_id, :activity_id, :omschrijving, :uur, :minuten, :antal, :opmerking_intern
  json.url sheet_url(sheet, format: :json)
end
