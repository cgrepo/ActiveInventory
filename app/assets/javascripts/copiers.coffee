$(document).on "turbolinks:load", ->
	$('.models4copier').empty()

	$('.brands4copier').on 'change', ->
		$.ajax
			url:'/bridge_helper/get_models'
			type:'GET'
			dataType:'script'
			data:
				brand: $('.brands4copier option:selected').val(),
				genus: 'COPIADORA'