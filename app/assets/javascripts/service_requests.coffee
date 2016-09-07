# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready ->
	$('.dependencies_collection').empty()
	$('.delegation_collection').on 'change', ->
		#console.log('change')
		#alert 'retu'
		#console.log($('.delegate option:selected').val())
		$.ajax
			url:'/service_requests/get_dependencies'
			type:'GET'
			dataType:'script'
			data:
				Delegation_id: $('.delegation_collection option:selected').val()
		return
	return
return
