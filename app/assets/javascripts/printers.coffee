$(document).on "turbolinks:load", ->
	$('.models4printer').empty()
	$('.pwifi').hide()
	$('.pnet').hide()
	$('.pnet-con').hide()
	$('.brands4printer').append('<option class="be-soft_purple smfont" value="plus">AGREGAR</option>')

	$('.brands4printer').on 'change', ->
		if $('.brands4printer option:selected').val() == 'plus'
			$.ajax
				type:'GET'
				url: '/printers/showmodal'
				dataType: 'script'

				
			# url = "/brand_models/new?type=IMPRESORA"
			# if url
			# 	window.location.replace url
		else
			$.ajax
				url:'/bridge_helper/get_models'
				type:'GET'
				dataType:'script'
				data:
					brand: $('.brands4printer option:selected').val(),
					genus: 'IMPRESORA'

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