$(document).on "turbolinks:load", ->
	$('input[type=radio][name="[delegation_level]"]').change ->
		$.ajax
			url:'/dependencies/'
			type:'GET'
			dataType:'script'
			data: Delegation: $('input[type=radio][name="[delegation_level]"]:checked').val()
		#	success: (data) -> 
		#		alert data
		#	error: (data) -> console.log data 