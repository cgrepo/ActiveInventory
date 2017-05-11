$(document).on "turbolinks:load", ->
	$('.models4screen').empty()
	$('.brands4screen').append('<option class="be-soft_purple smfont" value="plus">AGREGAR</option>')

	$('.brands4screen').on 'change', ->
		if $('.brands4screen option:selected').val() == 'plus'
			url = "/brand_models/new?type=MONITOR"
			if url
				window.location.replace url
		else
			$.ajax
				url:'/bridge_helper/get_models'
				type:'GET'
				dataType:'script'
				data:
					brand: $('.brands4screen option:selected').val(),
					genus: 'MONITOR'           
				success: (data) ->
					$('.models4screen').append('<option class="be-soft_purple smfont" value="plus">AGREGAR</option>')
	$('.models4screen').on 'change', ->
		if $('.models4screen option:selected').val() == 'plus'
			url = "/brand_models/new?type=MONITOR"
			if url
				window.location.replace url