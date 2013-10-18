class CoachingController < ApplicationController
  
	def index
		@text = Text.find(2)
	end
  
  def start
  	@sess = Session.new
  	@sess.user_id = 1
  	@sess.ancestor_id = nil
  	@sess.sessionid = generateSessId(@sess[:user_id])
  	@sessNew = true
  	@currentset = 1
  	
  	@firstQuestionSetData = Setitem.where(set_id: @currentset).first
  	@firstItemData = {:setItemId => @firstQuestionSetData[:id], :item_id => @firstQuestionSetData[:item_id], :itemtype => @firstQuestionSetData[:itemtype]}
  	
  	case @firstQuestionSetData[:itemtype]
  		when "q"
  			@item = Question.find(@firstItemData[:item_id])
			when "g"
				@item = Questiongroupquestions.find_by(:group_id => @firstItemData[:item_id])
			when "t"
				@item = Text.find(@firstItemData[:item_id])
			else
				nil
		end
  	
  	@item
  	@parameters = {:setItemId => @firstQuestionSetData[:id], :ancestor_id => @sess.ancestor_id, :new_session => true, :uId => 1, :itemType => @firstItemData[:itemtype]}
  end
  
  def coaching
		@answer = Answer.new({:text => params[:answer], :question_id => params[:itemId], :setItemId => params[:setItemId]})
  	@answer.save
  	@answerId = @answer.id
  	
  	if params[:newSession]
	  	@sess = Session.new({:user_id =>  params[:uId], :ancestor_id => params[:aId], :sessionid => generateSessId(params[:uId]), :topic => params[:answer], :date => Time.now.getutc.to_i})
			@sess.save
			@sessId = @sess.id
			@sessanswer = SessionAnswer.new({:session_id => @sessId, :answer_id => @answerId})
			@sessanswer.save
		else
			@sessId = params[:sId]
			@sessanswer = SessionAnswer.new({:session_id => @sessId, :answer_id => @answerId})
			@sessanswer.save
		end
		
		@nextItemData = getNextItem(params[:itemId],  @sessId, params[:setItemId])
		@item = @nextItemData[:item]
		@groupId = @nextItemData[:groupId]
		@nextItemData = @nextItemData[:setItem]
		@parameters = {:sessionid => @sessId, :user_id => params[:uId], :setItemId => @nextItemData[:id], :itemType => @nextItemData[:itemtype]}
		@parameters[:groupid] = @groupId #unless !@nextItemData[:groupId].nil?
		@item
  end
    
  def getNextItem(itemId, sid, setItemId)
  	
  	@currItemData = Setitem.find(setItemId)
  	
  	@currItemData = {:id => @currItemData[:id], :itemtype => @currItemData[:itemtype], :follower => @currItemData[:follower_id]}
  	
  	#Rails.logger.debug("Next-Item-Data: #{@currItemData}")
  	
  	case @currItemData[:follower]
  		when 0
	  		#getcurrentSet
	  		@currentSet = Setitem.find(setItemId)
	  		@nextSet = SetCompilationLink.find_by(:set_id => @currentSet[:set_id])
	  		@nextSet = @nextSet[:followed_by]
	  		@nextId = Setitem.where(set_id: @nextSet).first
				@nextId = @nextId[:id]
			when nil
  			@nextId = checkAnswer(@currItemData[:id], sid)
			else
  			@nextId = @currItemData[:follower]
  	end
  	
  	
		Rails.logger.debug("Next-Id: #{@nextId}")
  	
  	@nextItemData = Setitem.find(@nextId)
		@groupId = nil
	
		case @nextItemData[:itemtype]
  		when "q"
  			@type = "q"
  			@item = Question.find(@nextItemData[:item_id])
			when "g"
				@type = "q"
				@groupId = @nextItemData[:item_id];
				@item = Questiongroupquestion.where(:questiongroup_id => @groupId).order('position DESC').first
				@item = Question.find(@item[:question_id])
			when "t"
				@type ="t"
				@item = Text.find(@nextItemData[:item_id])
			else
				nil
		end
		@item.insertion(@sessId, @nextId)		
  	@item
  	return {:item => @item, :setItem => @nextItemData, :groupId => @groupId}
  end	  
  
  def checkAnswer(setItemId, sid)
  	#Rails.logger.debug("Ich checke!!! ---------------- ---------------- ---------------- ---------------- ----------------")
  	#@answerData = Answer.find_by_sql(%Q(SELECT answers.* FROM answers JOIN session_answers on answers.id = session_answers.answer_id WHERE answers.question_id = #{setItemId} AND session_answers.session_id = #{sid}))
  	@answerData = Answer.find_by_sql(%Q(SELECT answers.* FROM answers JOIN session_answers on answers.id = session_answers.answer_id JOIN setitems on setitems.id = #{setItemId}  WHERE answers.question_id = setitems.item_id AND session_answers.session_id = #{sid}))
		
		@answer = @answerData[0]
		
		Rails.logger.debug("Answer is: #{@answer} \n")
		@question = Question.find(@answer.question_id)
		Rails.logger.debug("Check against: #{@question.check_against} \n")
  	@answer = @answer.interpret(@question.check_against);
  	
		@nextId = AnswerSwitch.find_by(:setItemId => setItemId, :answer => @answer)
		@nextId = @nextId[:next_setitemid]
		
  end
  
  def generateSessId(uId)
  	@sessID = Time.now.getutc.to_i + uId.to_i
  end
  
  def addQPCount
  	@itemId = params[:itemId]
  	@problemData = Questionproblem.find_by(:item_id => @itemId)
  	
  	if(@problemData.nil?)
  		@problemData = Questionproblem.new(item_id: @itemId, problemcount: 1)
  		@problemData.save
  	else
  		@count = @problemData[:problemcount]
   		@count+= 1
			@problemData.update(problemcount: @count)
  	end
		render :nothing => true, :status => 200, :content_type => 'text/html'  
			
  end
  
  def getNextGroupItem
  	@currentGroupitem = Questiongroupquestion.find_by(:questiongroup_id => params[:gId], :question_id => params[:qId])
		Rails.logger.debug("Curr Position = #{@currentGroupitem[:position]}")
		if @currentGroupitem[:position] > 1
			@newPos = @currentGroupitem[:position] -= 1
			Rails.logger.debug("New Position = #{@newPos}") 
		else
			@maxPos = Questiongroupquestion.find_by_sql(%Q(SELECT MAX(position) as position FROM questiongroupquestions WHERE questiongroup_id = #{params[:gId]}))
			@maxPos = @maxPos[0]
			@newPos = @maxPos[:position]
			Rails.logger.debug("Neue Position = #{@newPos}")
		end
		@nextGroupItem = Questiongroupquestion.find_by(:position => @newPos);
		@item = Question.find(@nextGroupItem[:question_id])
		render json: @item  
  end
end
