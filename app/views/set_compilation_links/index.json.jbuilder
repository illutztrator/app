json.array!(@set_compilation_links) do |set_compilation_link|
  json.extract! set_compilation_link, :set_id, :setcompilation_id
  json.url set_compilation_link_url(set_compilation_link, format: :json)
end
