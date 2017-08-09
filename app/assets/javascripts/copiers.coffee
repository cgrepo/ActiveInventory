$(document).on "turbolinks:load", ->
	$('.models4copier').empty()
	$('.cwifi').hide()
	$('.cnet').hide()
	$('.cnet-con').hide()
	$('.brands4copier').append('<option class="be-soft_purple smfont" value="plus">AGREGAR</option>')

	$('.brands4copier').on 'change', ->
		if $('.brands4copier option:selected').val() == 'plus'
			$.ajax
				type:'GET'
				url: '/powers/showmodal'
				dataType: 'script'
			# url = "/brand_models/new?type=COPIADORA"
			# if url
			# 	window.location.replace url
		else
			$.ajax
				url:'/bridge_helper/get_models'
				type:'GET'
				dataType:'script'
				data:
					brand: $('.brands4copier option:selected').val(),
					genus: 'COPIADORA'
				success: (data) ->
					$('.models4copier').append('<option class="be-soft_purple smfont" value="plus">AGREGAR</option>')
	$('#copier_model').on 'change', ->
		if $('.models4copier option:selected').val() == 'plus'
			$.ajax
				type:'GET'
				url: '/powers/showmodal'
				dataType: 'script'
				success: (data) ->
					$('#brand_model_brandx').val($('.brands4copier option:selected').val())
					$('#brand_model_brandx').attr('disabled','true')
	$('.chkwific').change ->
		wi = $('.chkwific').is(':checked')
		net = $('.chknetc').is(':checked')
		if wi
			$('.cwifi').show()
			$('.cnet-con').show()
			if net				
				$('.cnet').show()
			else
				$('.cnet').hide()
		else
			$('.cwifi').hide()
			if net
				$('.cnet').show()
				$('.cnet-con').show()
			else
				$('.cnet').hide()
				$('.cnet-con').hide()
	$('.chknetc').change ->
		wi = $('.chkwific').is(':checked')
		net = $('.chknetc').is(':checked')
		if net
			$('.cnet').show()
			$('.cnet-con').show()
			if wi		
				$('.cwifi').show()
			else
				$('.cwifi').hide()
		else
			$('.cnet').hide()
			if wi
				$('.cwifi').show()
				$('.cnet-con').show()
			else
				$('.cwife').hide()
				$('.cnet-con').hide()
	$(document).on 'submit', 'form#commitAddBrandModel', (e) ->
		e.preventDefault()
		if valuesCompleated()
			$.ajax
	        	type:'GET'
	        	url:'/brand_models/addBrandModel'
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
valuesCompleated=->
    if $('#brand_model_brandx').val() == ''
        alert 'Proporcione la Marca'
        return false
    if $('#brand_model_modelx').val() == ''
        alert 'Proporcione el Modelo'
        return false
    return true