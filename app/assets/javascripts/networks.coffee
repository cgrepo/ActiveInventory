$(document).on "turbolinks:load", ->
	$('.ssid').hide -> 

	###$('.wifichk').click ->
		alert("HITTED!!!")###

	$('.wifichk').change ->
		if $('.wifichk').is(':checked')
			$('.ssid').fadeToggle()
		else
			$('.ssid').hide()