$(document).on "turbolinks:load", ->
	$('.ssid').hide()
	$('.assocnumber').hide()

	###$('.wifichk').click ->
		alert("HITTED!!!")###

	$('.wifichk').change ->
		if $('.wifichk').is(':checked')
			$('.ssid').fadeToggle()
		else
			$('.ssid').hide()
	
	$('.net-type').change ->
		if $('.net-type option:selected').val() == 'ADSL-MODEM'
			$('.assocnumber').fadeToggle()
		else
			$('.assocnumber').hide()
