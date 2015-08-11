json.array!(@fines) do |fine|
  json.extract! fine, :id, :fine_type, :fine_amunt
  json.url fine_url(fine, format: :json)
end
