$(document).on "turbolinks:load", ->
	$('.models4printer').empty()
	$('.pwifi').hide()
	$('.pnet').hide()
	$('.pnet-con').hide()
	$('.brands4printer').append('<option class="be-soft_purple smfont" value="plus">AGREGAR</option>')
	$('.chkwifip').change ->
		w = $('.chkwifip').is(':checked')
		n = $('.chknetp').is(':checked')
		if w
			$('.pwifi').show()
			$('.pnet-con').show()
			if n				
				$('.pnet').show()
			else
				$('.pnet').hide()
		else
			$('.pwifi').hide()
			if n
				$('.pnet').show()
				$('.pnet-con').show()
			else
				$('.pnet').hide()
				$('.pnet-con').hide()
	$('.chknetp').change ->
		w = $('.chkwifip').is(':checked')
		n = $('.chknetp').is(':checked')
		if n
			$('.pnet').show()
			$('.pnet-con').show()
			if w		
				$('.pwifi').show()
			else
				$('.pwifi').hide()
		else
			$('.pnet').hide()
			if w
				$('.pwifi').show()
				$('.pnet-con').show()
			else
				$('.pwife').hide()
				$('.pnet-con').hide()
	$('#printer_brand').on 'change', ->
		if $('#printer_brand option:selected').val() == ''
			$('#printer_model').empty()
		else
			if $('#printer_brand option:selected').val() == 'plus'
				$.ajax
					type:'GET'
					url: '/printers/showmodal'
					dataType: 'script'
			else
				$.ajax
					url:'/bridge_helper/get_models'
					type:'GET'
					dataType:'script'
					data:
						{
							brand:$('#printer_brand option:selected').val()
							genus:'IMPRESORA'
						}
					success: (data) ->
						$('#printer_model').append('<option class="be-soft_purple smfont" value="plus">AGREGAR</option>')
	$('#printer_model').on 'change', ->
		if $('#printer_model option:selected').val() == 'plus'
			$.ajax
				type:'GET'
				url: '/printers/showmodal'
				dataType: 'script'
				success: (data) ->
					$('#brand_model_brandx').val($('#printer_brand option:selected').val())
					$('#brand_model_brandx').attr('disabled','true')
	$(document).on 'submit', 'form#modal4printers', (e) ->
		e.preventDefault()
		if valuesCompleated()
			$.ajax
				type:'POST'
				url:'/printers/addBrandModel4printer'
				data:
					{
						brand:$('#brand_model_brandx').val()
						model:$('#brand_model_modelx').val()
						desc:'IMPRESORA'
					}
				success: (data) ->
					$('#printer_brand').empty()
					$('#printer_model').empty()
					$('#printer_brand').append(data)
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
# 	$('.brands4printer').on 'change', ->
# 		if $('.brands4printer option:selected').val() == 'plus'
# 			$.ajax
# 				type:'GET'
# 				url: '/printers/showmodal'
# 				dataType: 'script'
# 			# url = "/brand_models/new?type=IMPRESORA"
# 			# if url
# 			# 	window.location.replace url
# 		else
# 			$.ajax
# 				url:'/bridge_helper/get_models'
# 				type:'GET'
# 				dataType:'script'
# 				data:
# 					brand: $('.brands4printer option:selected').val(),
# 					genus: 'IMPRESORA'
# 				success: (data) ->
# 					$('.models4printer').append('<option class="be-soft_purple smfont" value="plus">AGREGAR</option>')
# 	$('.models4printer').on 'change', ->
# 		if $('.models4printer option:selected').val() == 'plus'
# 			$.ajax
# 				type:'GET'
# 				url: '/printers/showmodal'
# 				dataType: 'script'
# 				success: (data) ->
# 					$('#brand_model_brandx').val($('.brands4printer option:selected').val())
# 					$('#brand_model_brandx').attr('disabled','true')
# 	$(document).on 'submit', 'form#commitAddBrandModel', (e) ->
# 		e.preventDefault()
# 		if valuesCompleated
# 			$.ajax
# 	        	type:'GET'
# 	        	url:'/brand_models/addBrandModel'
# 	        	data:
# 	        		{ 
# 	        			brand: $('#brand_model_brandx').val()
# 	        			model:$('#brand_model_modelx').val()
# 	        			desc:'IMPRESORA'
# 	        		}
# 		        success: (data) ->
# 	           		$('#printer_brand').empty()
# 	           		$('#printer_model').empty()
# 	           		$('#printer_brand').append(data)
# 	           		$('#modal-window').modal('hide')
# 	            error: (data) ->
# 	            	alert 'error' + data
# valuesCompleated=->
#     if $('#brand_model_brandx').val() == ''
#         alert 'Proporcione la Marca'
#         return false
#     if $('#brand_model_modelx').val() == ''
#         alert 'Proporcione el Modelo'
#         return false
#     return true
