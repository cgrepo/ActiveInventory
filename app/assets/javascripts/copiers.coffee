$(document).on "turbolinks:load", ->
	$('.models4copier').empty()
	$('.cwifi').hide()
	$('.cnet').hide()
	$('.cnet-con').hide()
	$('.brands4copier').append('<option class="be-soft_purple smfont" value="plus">AGREGAR</option>')

	$('.brands4copier').on 'change', ->
		if $('.brands4copier option:selected').val() == 'plus'
			url = "/brand_models/new?type=COPIADORA"
			if url
				window.location.replace url
		else
			$.ajax
				url:'/bridge_helper/get_models'
				type:'GET'
				dataType:'script'
				data:
					brand: $('.brands4copier option:selected').val(),
					genus: 'COPIADORA'

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