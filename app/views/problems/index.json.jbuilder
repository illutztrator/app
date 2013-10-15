json.array!(@problems) do |problem|
  json.extract! problem, :question_id, :problem, :user_id
  json.url problem_url(problem, format: :json)
end
