$(document).on "turbolinks:load", ->
	$('.dependencies_collection').empty()

	$('.delegations_collection').on 'change', ->
		$.ajax
			url:'/bridge_helper/get_dependencies'
			type:'GET'
			dataType:'script'
			data:
				Delegation_id: $('.delegations_collection option:selected').val()