$(document).on "turbolinks:load", ->
	$('.models4pc').empty()

	$('.brands4pc').on 'change', ->
		$.ajax
			url:'/bridge_helper/get_models'
			type:'GET'
			dataType:'script'
			data:
				brand: $('.brands4pc option:selected').val(),
				genus: 'COMPUTADORA'
