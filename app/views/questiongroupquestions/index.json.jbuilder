json.array!(@questiongroupquestions) do |questiongroupquestion|
  json.extract! questiongroupquestion, :questiongroup_id, :question_id, :position
  json.url questiongroupquestion_url(questiongroupquestion, format: :json)
end
