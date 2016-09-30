$(document).on "turbolinks:load", ->
	$('.models4ups').empty()

	$('.brands4ups').on 'change', ->
		$.ajax
			url:'/bridge_helper/get_models'
			type:'GET'
			dataType:'script'
			data:
				brand: $('.brands4ups option:selected').val(),
				genus: 'REGULADOR/UPS'