json.array!(@nouns) do |noun|
  json.extract! noun, :id, :lemma, :pos, :lexdomname, :lexdom
  json.url noun_url(noun, format: :json)
end
