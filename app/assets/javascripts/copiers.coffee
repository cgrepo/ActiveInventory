$(document).on "turbolinks:load", ->
	$('#copier_model').empty()
	$('.cwifi').hide()
	$('.cnet').hide()
	$('.cnet-con').hide()
	$('#copier_brand').append('<option class="be-soft_purple smfont" value="plus">AGREGAR</option>')
	$('#copier_brand').on 'change', ->
		if $('#copier_brand option:selected').val() == ''
			$('#copier_model').empty()
		else
			if $('#copier_brand option:selected').val() == 'plus'
				$.ajax
					type:'GET'
					url: '/copiers/showmodal'
					dataType: 'script'
			else
				$.ajax
					url:'/bridge_helper/get_models'
					type:'GET'
					dataType:'script'
					data:
						{
						brand:$('#copier_brand option:selected').val()
						genus:'COPIADORA'
						}
					success: (data) ->
						$('#copier_model').append('<option class="be-soft_purple smfont" value="plus">AGREGAR</option>')
	$('#copier_model').on 'change', ->
		if $('#copier_model option:selected').val() == 'plus'
			$.ajax
				type:'GET'
				url: '/copiers/showmodal'
				dataType: 'script'
				success: (data) ->
					$('#brand_model_brandx').val($('#copier_brand option:selected').val())
					$('#brand_model_brandx').attr('disabled','true')
	$(document).on 'submit', 'form#modal4copiers', (e) ->
		e.preventDefault()
		if valuesCompleated()
			$.ajax
	        	type:'POST'
	        	url:'/copiers/addBrandModel4copier'
	        	data:
	        		{ 
	        			brand: $('#brand_model_brandx').val()
	        			model:$('#brand_model_modelx').val()
	        			desc:'COPIADORA'
	        		}
		        success: (data) ->
	           		$('#copier_brand').empty()
	           		$('#copier_model').empty()
	           		$('#copier_brand').append(data)
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