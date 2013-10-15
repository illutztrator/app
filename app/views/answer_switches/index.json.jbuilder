json.array!(@answer_switches) do |answer_switch|
  json.extract! answer_switch, :question_id, :answer, :nextQuestion
  json.url answer_switch_url(answer_switch, format: :json)
end
