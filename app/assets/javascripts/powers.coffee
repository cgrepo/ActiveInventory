$(document).on "turbolinks:load", ->
	$('.models4ups').empty()
	$('.brands4ups').append('<option class="be-soft_purple smfont" value="plus">AGREGAR</option>')
	$('#power_brand').on 'change', ->
		if $('#power_brand option:selected').val() == ''
			$('#power_model').empty()
		else
			if $('#power_brand option:selected').val() == 'plus'
				$.ajax
					type:'GET'
					url: '/powers/showmodal'
					dataType: 'script'
			else
				$.ajax
					url:'/bridge_helper/get_models'
					type:'GET'
					dataType:'script'
					data:
						{
							brand: $('#power_brand option:selected').val()
							genus:'REGULADOR/UPS'
						}
					success: (data) ->
						$('#power_model').append('<option class="be-soft_purple smfont" value="plus">AGREGAR</option>')
	$('#power_model').on 'change', ->
		if $('#power_model option:selected').val() == 'plus'
			$.ajax
				type:'GET'
				url: '/powers/showmodal'
				dataType: 'script'
				success: (data) ->
					$('#brand_model_brandx').val($('#power_brand option:selected').val())
					$('#brand_model_brandx').attr('disabled','true')
	$(document).on 'submit', 'form#modal4powers', (e) ->
		e.preventDefault()
		if valuesCompleated()
			$.ajax
				type:'GET'
				url:'/powers/addBrandModel4pow'
				data:
					{
						brand: $('#brand_model_brandx').val()
						model:$('#brand_model_modelx').val()
						desc:'REGULADOR/UPS'
					}
				success: (data) ->
					$('#power_brand').empty()
					$('#power_model').empty()
					$('#power_brand').append(data)
					$('#modal-window').modal('hide')
				error: (data) ->
					alert 'error' + data
		return
valuesCompleated=->
	if $('#brand_model_brandx').val() == ''
		alert 'Proporcione la Marca'
		return false
	if $('#brand_model_modelx').val() == ''
		alert 'Proporcione el Modelo'
		return false
	return true

