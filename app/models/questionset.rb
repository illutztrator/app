class Questionset < ActiveRecord::Base

	belongs_to :setquestionlink

	def getNextQuestionId(set, preQuestionId)
		@qset = setquestionlink.find_by(:set_id) 
		@qset = Questionset.find(:set)
		@question 
	end
end
