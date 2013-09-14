json.array!(@session_answers) do |session_answer|
  json.extract! session_answer, :session_id, :answer_id
  json.url session_answer_url(session_answer, format: :json)
end
