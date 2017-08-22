$(document).on "turbolinks:load", ->
	$('.net').hide ->
	$('.models4tel').empty()
	$('.brands4tel').append('<option class="be-soft_purple smfont" value="plus">AGREGAR</option>')
	$('.option_type').on 'change', ->
		if $('.option_type option:selected').val() == 'VOIP'
			$('.net').show ->
		else
			$('.net').hide ->
	$('#telephone_brand').on 'change', ->
		if $('#telephone_brand option:selected').val() == ''
			$('#telephone_model').empty()
		else
			if $('#telephone_brand option:selected').val() == 'plus'
				$.ajax
					type:'GET'
					url: '/telephones/showmodal'
					dataType: 'script'
			else
				$.ajax
					url:'/bridge_helper/get_models'
					type:'GET'
					dataType:'script'
					data:
						{
							brand: $('#telephone_brand option:selected').val()
							genus:'TELEFONO'
						}
					success: (data) ->
						$('#telephone_model').append('<option class="be-soft_purple smfont" value="plus">AGREGAR</option>')
	$('#telephone_model').on 'change', ->
		if $('#telephone_model option:selected').val() == 'plus'
			$.ajax
				type:'GET'
				url: '/telephones/showmodal'
				dataType: 'script'
				success: (data) ->
					$('#brand_model_brandx').val($('#telephone_brand option:selected').val())
					$('#brand_model_brandx').attr('disabled','true')
	$(document).on 'submit', 'form#modal4telephones', (e) ->
		e.preventDefault()
		if valuesCompleated()
			$.ajax
				type:'GET'
				url:'/telephones/addBrandModel4telephone'
				data:
					{
						brand: $('#brand_model_brandx').val()
						model: $('#brand_model_modelx').val()
						desc:'TELEFONO'
					}
				success: (data) ->
					$('#telephone_brand').empty()
					$('#telephone_model').empty()
					$('#telephone_brand').append(data)
					$('#modal-window').modal('hide')
				error: (data) ->
					alert 'error' + data
valuesCompleated=->
	if $('#brand_model_brandx').val() == ''
		alert 'Proporcione la Marca'
		return false
	if $('#brand_model_modelx').val() == ''
		alert 'Proporcione el Modelo'
		return false
	return true
	# $('.brands4tel').on 'change', ->
	# 	if $('.brands4tel option:selected').val() == 'plus'
	# 		url = "/brand_models/new?type=TELEFONO"
	# 		if url
	# 			window.location.replace url
	# 	else
	# 		$.ajax
	# 			url:'/bridge_helper/get_models'
	# 			type:'GET'
	# 			dataType:'script'
	# 			data:
	# 				brand: $('.brands4tel option:selected').val(),
	# 				genus: 'TELEFONO'