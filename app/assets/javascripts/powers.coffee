$(document).on "turbolinks:load", ->
	$('.models4ups').empty()
	$('.brands4ups').append('<option class="be-soft_purple smfont" value="plus">AGREGAR</option>')
	
	$('.brands4ups').on 'change', ->
		if $('.brands4ups option:selected').val() == 'plus'
			url = "/brand_models/new?type=pow"
			if url
				window.location.replace url
		else
			$.ajax
				url:'/bridge_helper/get_models'
				type:'GET'
				dataType:'script'
				data:
					brand: $('.brands4ups option:selected').val(),
					genus: 'REGULADOR/UPS'