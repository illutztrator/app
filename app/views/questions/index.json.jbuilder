json.array!(@questions) do |question|
  json.extract! question, :text, :type
  json.url question_url(question, format: :json)
end
