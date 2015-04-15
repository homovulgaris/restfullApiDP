json.array!(@adjectives) do |adjective|
  json.extract! adjective, :id, :lemma, :pos, :lexdomname, :lexdom
  json.url adjective_url(adjective, format: :json)
end
