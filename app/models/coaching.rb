class Coaching < ActiveRecord::Base
	
	def getNextQuestion(@parentQuestion)
  	Setquestionlink.find_by question_id: @parentQuestion  	
  end

end
