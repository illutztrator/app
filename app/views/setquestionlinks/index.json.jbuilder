json.array!(@setquestionlinks) do |setquestionlink|
  json.extract! setquestionlink, :set_id, :question_id, :follower_id
  json.url setquestionlink_url(setquestionlink, format: :json)
end
