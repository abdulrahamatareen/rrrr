json.array!(@members) do |member|
  json.extract! member, :id, :member_name, :meber_nicn
  json.url member_url(member, format: :json)
end
