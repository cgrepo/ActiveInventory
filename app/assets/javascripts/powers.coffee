$(document).on "turbolinks:load", ->
	$('.models4ups').empty()
	$('.brands4ups').append('<option class="be-soft_purple smfont" value="plus">AGREGAR</option>')
	
# 	$('.brands4ups').on 'change', ->
# 		if $('.brands4ups option:selected').val() == 'plus'
# 			$.ajax
# 				type:'GET'
# 				url: '/powers/showmodal'
# 				dataType: 'script'
# 			# url = "/brand_models/new?type=REGULADOR/UPS"
# 			# if url
# 			# 	window.location.replace url
# 		else
# 			$.ajax
# 				url:'/bridge_helper/get_models'
# 				type:'GET'
# 				dataType:'script'
# 				data:
# 					brand: $('.brands4ups option:selected').val(),
# 					genus: 'REGULADOR/UPS'
# 				success: (data) ->
# 					$('.models4ups').append('<option class="be-soft_purple smfont" value="plus">AGREGAR</option>')
# 	$('#power_model').on 'change', ->
# 		if $('.models4ups option:selected').val() == 'plus'
# 			$.ajax
# 				type:'GET'
# 				url: '/powers/showmodal'
# 				dataType: 'script'
# 				success: (data) ->
# 					$('#brand_model_brandx').val($('.brands4ups option:selected').val())
# 					$('#brand_model_brandx').attr('disabled','true')
# 	$(document).on 'submit', 'form#commitAddBrandModel', (e) ->
# 		e.preventDefault()
# 		if valuesCompleated()
# 			$.ajax
# 	        	type:'GET'
# 	        	url:'/brand_models/addBrandModel'
# 	        	data:
# 	        		{ 
# 	        			brand: $('#brand_model_brandx').val()
# 	        			model:$('#brand_model_modelx').val()
# 	        			desc:'REGULADOR/UPS'
# 	        		}
# 		        success: (data) ->
# 	           		$('#power_brand').empty()
# 	           		$('#power_model').empty()
# 	           		$('#power_brand').append(data)
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