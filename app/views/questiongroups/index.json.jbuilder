json.array!(@questiongroups) do |questiongroup|
  json.extract! questiongroup, :name
  json.url questiongroup_url(questiongroup, format: :json)
end
