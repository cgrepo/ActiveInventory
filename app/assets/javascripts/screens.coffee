$(document).on "turbolinks:load", ->
	$('.models4screen').empty()
	$('.brands4screen').append('<option class="be-soft_purple smfont" value="plus">AGREGAR</option>')
	$('#screen_brand').on 'change', ->
		if $('#screen_brand option:selected').val() == ''
			$('#screen_model').empty()
		else
			if $('#screen_brand option:selected').val() == 'plus'
				$.ajax
					type:'GET'
					url: '/screens/showmodal'
					dataType: 'script'
			else
				$.ajax
					url:'/bridge_helper/get_models'
					type:'GET'
					dataType:'script'
					data:
						{
							brand: $('#screen_brand option:selected').val()
							genus:'MONITOR'
						}
					success: (data) ->
						$('#screen_model').append('<option class="be-soft_purple smfont" value="plus">AGREGAR</option>')
	$(document).on 'submit', 'form#modal4screens', (e) ->
		e.preventDefault()
		if valuesCompleated()
			$.ajax
				type:'GET'
				url:'/screens/addBrandModel4screen'
				data:
					{
						brand: $('#brand_model_brandx').val()
						model:$('#brand_model_modelx').val()
						desc:'MONITOR'
					}
				success: (data) ->
					$('#screen_brand').empty()
					$('#screen_model').empty()
					$('#screen_brand').append(data)
					$('#modal-window').modal('hide')
				error: (data) ->
					alert 'error' + data
	$('#screen_model').on 'change', ->
		if $('#screen_model option:selected').val() == 'plus'
			$.ajax
				type:'GET'
				url: '/screens/showmodal'
				dataType: 'script'
				success: (data) ->
					$('#brand_model_brandx').val($('#screen_brand option:selected').val())
					$('#brand_model_brandx').attr('disabled','true')
valuesCompleated=->
	if $('#brand_model_brandx').val() == ''
		alert 'Proporcione la Marca'
		return false
	if $('#brand_model_modelx').val() == ''
		alert 'Proporcione el Modelo'
		return false
	return true