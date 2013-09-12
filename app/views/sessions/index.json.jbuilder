json.array!(@sessions) do |session|
  json.extract! session, :sessionid, :user_id, :date, :completed
  json.url session_url(session, format: :json)
end
