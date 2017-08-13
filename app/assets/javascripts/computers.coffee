$(document).on "turbolinks:load", ->
	$('.models4pc').empty()
	$('.wifis').hide ->
	$('.blue').hide ->
	$('.drah').append('<option class="be-soft_purple smfont" value="plus">AGREGAR</option>')
	$('.omem').append('<option class="be-soft_purple smfont" value="plus">AGREGAR</option>')
	$('.veciffo').append('<option class="be-soft_purple smfont" value="plus">AGREGAR</option>')
	$('.rossecorp').append('<option class="be-soft_purple smfont" value="plus">AGREGAR</option>')
	$('.rekrow').append('<option class="be-soft_purple smfont" value="plus">AGREGAR</option>')
	$('.operasys').append('<option class="be-soft_purple smfont" value="plus">AGREGAR</option>')
	$('.brands4pc').append('<option class="be-soft_purple smfont" value="plus">AGREGAR</option>')
	$('.chkblue').change ->
		if $('.chkblue').is(':checked')
			$('.blue').show()
		else
			$('.blue').hide()
	$('.chkwifis').change ->
		if $('.chkwifis').is(':checked')
			$('.wifis').show()
		else
			$('.wifis').hide()
	$('.drah').on 'change', ->
		if $('.drah option:selected').val() == 'plus'
			url = "/hardds/new"
			if url
				window.location.replace url
	$('.omem').on 'change', ->
		if $('.omem option:selected').val() == 'plus'
			url = "/memos/new"
			if url
				window.location.replace url
	$('.veciffo').on 'change', ->
		if $('.veciffo option:selected').val() == 'plus'
			url = "/officevs/new"
			if url
				window.location.replace url
	$('.rossecorp').on 'change', ->
		if $('.rossecorp option:selected').val() == 'plus'
			url = "/processors/new"
			if url
				window.location.replace url
	$('.rekrow').on 'change', ->
		if $('.rekrow option:selected').val() == 'plus'
			url = "/workers/new"
			if url
				window.location.replace url
	$('.operasys').on 'change', ->
		if $('.operasys option:selected').val() == 'plus'
			url = "/osies/new"
			if url
				window.location.replace ur
	$('.brands4pc').on 'change', ->
		if $('.brands4pc option:selected').val() == ''
			$('.models4pc').empty()
		else
			if $('.brands4pc option:selected').val() == 'plus'
				$.ajax
					type:'GET'
					url: '/computers/showmodal'
					dataType: 'script'
			
			else
				$.ajax
					url:'/bridge_helper/get_models'
					type:'GET'
					dataType:'script'
					data:
						brand: $('.brands4pc option:selected').val(),
					success: (data) ->
						$('.models4pc').append('<option class="be-soft_purple smfont" value="plus">AGREGAR</option>')
	$('.models4pc').on 'change', ->
		if $('.models4pc option:selected').val() == 'plus'
			$.ajax
				type:'GET'
				url: '/computers/showmodal'
				dataType: 'script'
				success: (data) ->
					$('#brand_model_brandx').val($('.brands4pc option:selected').val())
					$('#brand_model_brandx').attr('disabled','true')
	$(document).on 'submit', 'form#commitAddBrandModel4pc', (e) ->
		e.preventDefault()
		if valuesCompleated()
			$.ajax
	        	type:'GET'
	        	url:'/computers/addBrandModel4pc'
	        	data:
	        		{ 
	        			brand: $('#brand_model_brandx').val()
	        			model:$('#brand_model_modelx').val()
	        			desc:'COMPUTADORA'
	        		}
		        success: (data) ->
	           		$('#computer_brand').empty()
	           		$('#computer_model').empty()
	           		$('#computer_brand').append(data)
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