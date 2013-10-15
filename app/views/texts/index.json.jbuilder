json.array!(@texts) do |text|
  json.extract! text, :title, :text
  json.url text_url(text, format: :json)
end
