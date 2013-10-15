class SetCompilationLink < ActiveRecord::Base

	has_many :questionsets

	def getNextSet(currentSet)
		find_by(:set_id => currentSet)
	end
end
