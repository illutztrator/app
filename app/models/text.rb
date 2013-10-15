class Text < ActiveRecord::Base

	def insertion(sId, setItemId) 
		if(self.needs_insertion)
				@insertion = Answer.find_by_sql(%Q(SELECT answers.* FROM answers JOIN session_answers on session_answers.answer_id = answers.id AND session_answers.session_id = #{sId} WHERE setItemId = #{self.answer_of_setItem}))
				self.text["$$$"] = @insertion[0].text
		end		
	end

end
