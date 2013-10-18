checkChecked = (item) -> 
	id = item.children('input').attr('id')
	switch id
		when "yes" then $('#answer').attr('value','yes')
		when "no"  then $('#answer').attr('value','no')
		else ""
	

setHelperIconPosition = () -> 
	parentHeight = $('.field').innerHeight();
	offset = (parentHeight/2)-($('#questionHelperIcon').height()/2)
	console.log(offset)
	$('#questionHelperIcon').css({top: offset})
	$('#questionHelperIcon').click((event) -> 
		$('#questionHelperContent').toggle()
		$('#questionHelperIcon').toggleClass('active')
		)


reportHelperClick = (helpIcon) ->
	itemId = $('#itemId').val();
	if !helpIcon.hasClass('active')
		$.post('/coaching/addQPCount', { itemId: itemId});

getQuestionAlternative = () ->
	groupId = $('#gId').val();
	questionId = $('#qId').val();
	console.log(groupId+" : "+questionId)
	$.post '/coaching/getNextGroupItem',
		gId: groupId 
		qId: questionId
		(data) -> $('#textItemContent').html(data.text)
	
	

jQuery -> $('.slider').slider({max:100, min:0, value:50, orientation:"horizontal", step:1}).on( "slidestop", ( event, ui ) -> $('#answer').attr('value',$('.slider').slider('value')); )
jQuery -> $('.btn-group').button()
#jQuery -> $('.btn-group').click((event) -> $('#'+checkChecked()).attr('checked','checked') unless checkChecked())
jQuery -> $('.btn-group .btn').click((event) -> checkChecked($(this)))
#jQuery -> $('#true').click((event) -> this.attr('checked','checked'))
window.onload = -> setHelperIconPosition()
jQuery -> $('#questionHelperIcon').click((event) -> reportHelperClick($(this)))
jQuery -> $('#switchQuestionButton').click((ecent) -> getQuestionAlternative())