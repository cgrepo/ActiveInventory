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

	$('.brands4pc').on 'change', ->
		if $('.brands4pc option:selected').val() == 'plus'
			url = "/brand_models/new?pc"
			if url
				window.location.replace url
		else
			$.ajax
				url:'/bridge_helper/get_models'
				type:'GET'
				dataType:'script'
				data:
					brand: $('.brands4pc option:selected').val(),
					genus: 'COMPUTADORA'

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