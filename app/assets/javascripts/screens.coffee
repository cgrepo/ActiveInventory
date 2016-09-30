$(document).on "turbolinks:load", ->
	$('.models').empty()

	$('.brands').on 'change', ->
		$.ajax
			url:'/bridge_helper/get_models'
			type:'GET'
			dataType:'script'
			data:
				brand: $('.brands option:selected').val(),
				genus: 'MONITOR'
