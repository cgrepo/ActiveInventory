$(document).on "turbolinks:load", ->
	$('.net').hide ->
	$('.models4tel').empty()

	$('.brands4tel').on 'change', ->
		$.ajax
			url:'/bridge_helper/get_models'
			type:'GET'
			dataType:'script'
			data:
				brand: $('.brands4tel option:selected').val(),
				genus: 'TELEFONO'

	$('.option_type').on 'change', ->
		if $('.option_type option:selected').val() == 'VOIP'
			$('.net').show ->
		else
			$('.net').hide ->