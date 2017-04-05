$(document).on "turbolinks:load", ->
	$brands = $('.brands4screen')
	$selectedBrand = $('.brands4screen option:selected')
	$('.models4screen').empty()
	$brands.append('<option class="be-soft_purple smfont" value="plus">AGREGAR</option>')
	
	$brands.on 'change', ->
		if $('.brands4screen option:selected').val() == 'plus'
			url = "/brand_models/new?type=screen"
			if url
				window.location.replace url
		else
			$.ajax
				url:'/bridge_helper/get_models'
				type:'GET'
				dataType:'script'
				data:
					brand: $selectedBrand.val(),
					genus: 'MONITOR'
				success: (data) ->
					alert data
			#$('.models4screen').append('<option class="be-soft_purple smfont" value="plus">AGREGAR</option>')