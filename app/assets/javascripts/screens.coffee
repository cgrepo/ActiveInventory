$(document).on "turbolinks:load", ->
	$('.models4screen').empty()
	$('.fechax').datepicker({ dateFormat: 'dd/mm/yy' }).val()

	$('.brands4screen').on 'change', ->
		$.ajax
			url:'/bridge_helper/get_models'
			type:'GET'
			dataType:'script'
			data:
				brand: $('.brands4screen option:selected').val(),
				genus: 'MONITOR'
