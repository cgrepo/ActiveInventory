$(document).on "turbolinks:load", ->
	$('.models4screen').empty()
	$('.brands4screen').append('<option class="be-soft_purple smfont" value="plus">AGREGAR</option>')

# 	$('.brands4screen').on 'change', ->
# 		if $('.brands4screen option:selected').val() == 'plus'
# 			$.ajax
# 				type:'GET'
# 				url: '/screens/showmodal'
# 				dataType: 'script'
# 			# url = "/brand_models/new?type=MONITOR"
# 			# if url
# 			# 	window.location.replace url
# 		else
# 			$.ajax
# 				url:'/bridge_helper/get_models'
# 				type:'GET'
# 				dataType:'script'
# 				data:
# 					brand: $('.brands4screen option:selected').val(),
# 					genus: 'MONITOR'           
# 				success: (data) ->
# 					$('.models4screen').append('<option class="be-soft_purple smfont" value="plus">AGREGAR</option>')
# 	$('.models4screen').on 'change', ->
# 		if $('.models4screen option:selected').val() == 'plus'
# 			$.ajax
# 				type:'GET'
# 				url: '/screens/showmodal'
# 				dataType: 'script'
# 				success: (data) ->
# 					$('#brand_model_brandx').val($('.brands4screen option:selected').val())
# 					$('#brand_model_brandx').attr('disabled','true')
# 			# url = "/brand_models/new?type=MONITOR"
# 			# if url
# 			# 	window.location.replace url
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
# 	        			desc:'MONITOR'
# 	        		}
# 		        success: (data) ->
# 	           		$('#screen_brand').empty()
# 	           		$('#screen_model').empty()
# 	           		$('#screen_brand').append(data)
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