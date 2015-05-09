json.array!(@activities) do |activity|
  json.extract! activity, :id, :name, :short_code
  json.url activity_url(activity, format: :json)
end
