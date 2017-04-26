$(document).on "turbolinks:load", ->
	$('.net').hide ->
	$('.models4tel').empty()
	$('.brands4tel').append('<option class="be-soft_purple smfont" value="plus">AGREGAR</option>')

	$('.brands4tel').on 'change', ->
		if $('.brands4tel option:selected').val() == 'plus'
			url = "/brand_models/new?type=TELEFONO"
			if url
				window.location.replace url
		else
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