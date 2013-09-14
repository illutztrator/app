json.array!(@questionsets) do |questionset|
  json.extract! questionset, :title
  json.url questionset_url(questionset, format: :json)
end
