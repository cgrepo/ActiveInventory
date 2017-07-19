$(document).on "turbolinks:load", ->
	$('.dependencies').empty()
	$('.copiers_collection').empty()
	$('.printers_collection').empty()
	$('.screens_collection').empty()
	$('.telephones_collection').empty()
	$('.powers_collection').empty()
	$('.screens_collection').empty()
	
	$('.delegations').on 'change', ->
		$.ajax
			url:'/service_requests/get_dependencies'
			type:'GET'
			dataType:'script'
			data:
				Delegation_id: $('.delegations option:selected').val()


	$('.dependencies').on 'change', ->
		$.ajax
			url:'/service_requests/get_equipments'
			type:'GET'
			dataType:'script'
			data:
				Dependency_id: $('.dependencies option:selected').val()
