json.array!(@setcompilations) do |setcompilation|
  json.extract! setcompilation, :name, :theme
  json.url setcompilation_url(setcompilation, format: :json)
end
