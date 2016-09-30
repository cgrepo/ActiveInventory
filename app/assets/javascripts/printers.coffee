$(document).on "turbolinks:load", ->
	$('.models4printer').empty()

	$('.brands4printer').on 'change', ->
		$.ajax
			url:'/bridge_helper/get_models'
			type:'GET'
			dataType:'script'
			data:
				brand: $('.brands4printer option:selected').val(),
				genus: 'IMPRESORA'