$(document).ready ->
	$('.dependencies_collection').empty()
	$('.copiers_collection').empty()
	$('.delegation_collection').on 'change', ->
		$.ajax
			url:'/service_requests/get_dependencies'
			type:'GET'
			dataType:'script'
			data:
				Delegation_id: $('.delegation_collection option:selected').val()
		return

	$('.dependencies_collection').on 'change', ->
		#console.log('change')
		$.ajax
			url:'/service_requests/get_equipments'
			type:'GET'
			dataType:'script'
			data:
				Dependency_id: $('.dependencies_collection option:selected').val()
	return
return