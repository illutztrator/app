checkChecked = (item) -> 
	id = item.children('input').attr('id')
	switch id
		when "yes" then $('#answer').attr('value','yes')
		when "no"  then $('#answer').attr('value','no')
		else ""
	
jQuery -> $('.slider').slider({max:100, min:0, value:50, orientation:"horizontal", step:1}).on( "slidestop", ( event, ui ) -> $('#answer').attr('value',$('.slider').slider('value')); )
jQuery -> $('.btn-group').button()
#jQuery -> $('.btn-group').click((event) -> $('#'+checkChecked()).attr('checked','checked') unless checkChecked())
jQuery -> $('.btn-group .btn').click((event) -> checkChecked($(this)))
#jQuery -> $('#true').click((event) -> this.attr('checked','checked'))


	
										
											